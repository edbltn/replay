(* File: codegen.ml
 * Created: 11/18/2016
 *
 * COMSW4115 Fall 2016 (CVN)
 * replay
 * Eric D. Bolton <edb2129@columbia.edu> *)

open Ast

module L = Llvm
module S = Sast

module SM = Map.Make(String)

type translation_environment = {
  mutable parent  : translation_environment option;
  mutable vars    : (string * L.llvalue) list;
  mutable srand_set : bool
}

let translate (functions, globals) =

  let context = L.global_context () in
  let the_module = L.create_module context "Replay"
  (* Define types *)
  and f64_t = L.double_type context
  and i32_t  = L.i32_type  context
  and i8_t   = L.i8_type   context
  and i1_t   = L.i1_type   context
  and void_t = L.void_type context
  and ptr_t = L.pointer_type in
  (* Special types *)
  (* Transition type: output move, next states *)
  let trans_t = L.struct_type context [| i32_t; i32_t |] in
  (* Game type: number of moves, number of players, payoff matrix *)
  let game_t = L.struct_type context [| i32_t; i32_t; (ptr_t f64_t) |] in
  (* Strategy type: number of moves, number of players, number of states,
   * number of terminal states, number of inaccessible states, states matrix *)
  let strategy_t = L.struct_type context [| i32_t; i32_t; i32_t;
    (ptr_t trans_t) |] in
  (* Player type: strategy, delta, payoff, current state, rounds played *)
  let player_t = L.struct_type context [| (ptr_t strategy_t); f64_t; f64_t;
    i32_t; i32_t |] in
  (* Function type: stores return type and param types *)
  let func_t = L.var_arg_function_type in
  (* Get array type of ltype *)
  let array_t ltype =
    (* Size; contents *)
    L.struct_type context [| i32_t; (ptr_t ltype) |]
  in

  (* Convert Ast types to LLVM types *)
  let rec ltype_of_typ = function
      Int -> i32_t
    | Bool -> i1_t
    | Float -> f64_t
    | String -> ptr_t i8_t
    | Void -> void_t
    | Game -> ptr_t game_t
    | Strategy -> ptr_t strategy_t
    | Player -> ptr_t player_t
    | Array(typ) -> ptr_t (array_t (ltype_of_typ typ))
  in

  (* Convert Ast types to LLVM constant *)
  let lconst_of_typ = function
      Int -> L.const_int i32_t 0
    | Bool -> L.const_int i1_t 0
    | Float -> L.const_float f64_t 0.0
    | String -> L.const_null (ptr_t i8_t)
    | Void -> L.const_int (void_t) 0
    | Game -> L.const_null (ptr_t game_t)
    | Strategy -> L.const_null (ptr_t strategy_t)
    | Player-> L.const_null (ptr_t player_t)
    | Array(typ) -> L.const_null (ptr_t (array_t (ltype_of_typ typ)))
  in

  (* Translate an Ast type into a Sast type *)
  let t_of_typ = function
      Int -> S.Int
    | Bool -> S.Bool
    | Float -> S.Float
    | Void -> S.Void
    | String -> S.String
    | Game -> S.Game(None, 0)
    | Strategy -> S.Strategy(None, None, 0)
    | Player -> S.Player
    | Array(typ) -> S.Array(typ, None)
  in

  (* Declare printf(), which the print, println built-in functions will call *)
  let printf_t = func_t i32_t [| ptr_t i8_t |] in
  let printf_func = L.declare_function "printf" printf_t the_module in

  (* Declare strcat(), strcpy(), and strlen() which will be used for strings *)
  let strcat_t = func_t (ptr_t i8_t) [| ptr_t i8_t; ptr_t i8_t |] in
  let strcat_func = L.declare_function "strcat" strcat_t the_module in
  let strcpy_t = func_t (ptr_t i8_t) [| ptr_t i8_t; ptr_t i8_t |] in
  let strcpy_func = L.declare_function "strcpy" strcpy_t the_module in
  let strlen_t = func_t i32_t [| ptr_t i8_t |] in
  let strlen_func = L.declare_function "strlen" strlen_t the_module in

  (* Declare sprintf(), which will be used to transform types into strings *)
  let sprintf_t = func_t (i32_t) [| ptr_t i8_t; ptr_t i8_t |] in
  let sprintf_func = L.declare_function "sprintf" sprintf_t the_module in

  (* Declare useful math functions *)
  let rand_t = func_t (i32_t) [| |] in
  let rand_func = L.declare_function "rand" rand_t the_module in
  let srand_t = func_t (void_t) [| i32_t |] in
  let srand_func = L.declare_function "srand" srand_t the_module in
  let time_t = func_t (i32_t) (Array.make 0 (i32_t)) in
  let time_func = L.declare_function "time" time_t the_module in
  let pow_t = func_t (f64_t) [| f64_t; f64_t |] in
  let pow_func = L.declare_function "pow" pow_t the_module in

  (* Define globals and store them in a map *)
  let global_vars =
      (* Add global variable to map, with name as key *)
    let global_var map (typ, name, _) =
      let init = lconst_of_typ typ in
      SM.add name (L.define_global name init the_module) map
    in List.fold_left global_var SM.empty globals
  in

  (* Define functions and store them in a map *)
  let function_decls =
    (* Add function declaration fdecl to map, with its name as key *)
    let function_decl map fdecl =
      let name = fdecl.S.name
      (* Types of the function parameters *)
      and param_types =
        Array.of_list (List.map (fun (t,_) -> ltype_of_typ t) fdecl.S.params) in
      (* Define the function type *)
      let ftype = func_t (ltype_of_typ fdecl.S.typ) param_types in
      (* Add the function to the string map *)
      SM.add name (L.define_function name ftype the_module, fdecl) map in
    (* Add all function types to the string map *)
    List.fold_left function_decl SM.empty functions
  in

  (* Build the body of fdecl *)
  let build_function_body fdecl =

    let (the_function, _) = SM.find fdecl.S.name function_decls in

    (* Garbage collector *)
    L.set_gc (Some("statepoint-example")) the_function;

    (* Instruction builder *)
    let builder = L.builder_at_end context (L.entry_block the_function) in

    (* Generate random number seed *)
    (if fdecl.S.name = "main" then (
      let time = L.build_call time_func (Array.make 0 (L.const_int i32_t 0))
        "time" builder in ignore (L.build_call srand_func [| time |] ""
      builder);) else ());

    (* Print formatting *)
    let print_fmt = L.build_global_stringptr "%s" "fmt" builder in
    let println_fmt = L.build_global_stringptr "%s\n" "fmtln" builder in
    let int_fmt = L.build_global_stringptr "%d" "fmtd" builder in
    let float_fmt = L.build_global_stringptr "%g" "fmtf" builder in
    let move_fmt = L.build_global_stringptr "%d " "fmtm" builder in
    let trans_fmt = L.build_global_stringptr "( %s) -> state %d\n" "fmtt"
      builder in
    let state_fmt = L.build_global_stringptr "State %d: play %d\n" "fmts"
      builder in
    let clear_fmt = L.build_global_stringptr "" "fmtclr" builder in
    let error_fmt = L.build_global_stringptr "%s: %d =/= %d\n" "fmte" builder in

    (* Helper functions *)
    (* Check whether builder's current block has terminator, then add branch
     * if it does not. *)
    let add_terminal builder branch =
      match L.block_terminator (L.insertion_block builder) with
        Some _ -> ()
      | None -> ignore (branch builder)
    in

    let build_print_error builder str comp i1 i2 =
      let error_string = L.build_global_stringptr str "error" builder in
      (* Create instructions to evaluate condition at end of builder *)
      let bool_val = (L.build_icmp comp) i1 i2 "error" builder in
      (* Create merge block *)
      let merge_bb = L.append_block context "merge" the_function in
      (* Create error block *)
      let error_bb = L.append_block context "error" the_function in
      let error_builder = (L.builder_at_end context error_bb) in
      ignore (L.build_call printf_func [| error_fmt; error_string; i1; i2|]
          "printerror" error_builder);
      add_terminal error_builder (L.build_br merge_bb);
      (* Create branch instruction at end of builder *)
      ignore (L.build_cond_br bool_val error_bb merge_bb builder);
      (* Move builder to end of merge block *)
      L.position_at_end merge_bb builder;
    in

    (* Get length of array *)
    let build_get_arrlen builder a =
      L.build_gep a [| L.const_int i32_t 0; L.const_int i32_t 0 |]
        "getlen" builder
    in

    (* Get pointer to contents of array *)
    let build_get_arrcon builder a =
      L.build_gep a [| L.const_int i32_t 0; L.const_int i32_t 1 |]
        "getcon" builder
    in

    (* Looks up element at address i of array in structure a *)
    let build_array_access builder a i =
      let addr = L.build_load a "addr" builder in

      let ptrtocon = build_get_arrcon builder addr in

      let conaddr = L.build_load ptrtocon "conaddr" builder in

      L.build_gep conaddr [| i |] "access" builder
    in

    (* Get field i of struct a *)
    let build_get_field builder a i =
      L.build_gep a [| L.const_int i32_t 0; i |] "field" builder
    in

    (* Different types get stored differently. dest must be a pointer to the
     * same type as src. *)
    let build_store_typ t src dest builder =
      (match t with
          S.String ->
            let l = L.build_call strlen_func [| src |] "strlen" builder in
            let result = L.build_array_alloca i8_t l "result" builder in
            ignore (L.build_call strcpy_func [| result ; src |]
              "strcpy" builder);
            L.build_store result dest builder
        | _ -> L.build_store src dest builder
      )
    in

    (* Add function parameter to local environment *)
    let add_param lst (typ, name) param = L.set_value_name name param;
      let local = L.build_alloca (ltype_of_typ typ) name builder
      in
      ignore (build_store_typ (t_of_typ typ) param local builder);
      (name, local)::lst
    in
    let local_vars = List.fold_left2 add_param []
      fdecl.S.params (Array.to_list (L.params the_function))
    in

    (* Create the local environment *)
    let local_env = { parent = None; vars = local_vars; srand_set = false } in
    (* Useful functions for environment *)
    let child_env env = { parent = Some(env); vars = local_vars;
      srand_set = false } in
    (* Add variable to environment *)
    let add_local builder lst (typ, name) =
      let local = L.build_alloca (ltype_of_typ typ) name builder
      in
      (name, local)::lst
    in

    let add_to_env env builder (typ, name) =
      env.vars <- add_local builder env.vars (typ, name)
    in

    let rec lookup env name =
      try
        snd (List.find (fun (k,_) -> k = name) env.vars)
      with Not_found ->
        (match env.parent with
          Some(parent) -> lookup parent name
        | _ -> SM.find name global_vars)
    in

    let build_float_of builder e =
      let ltype = L.type_of e in

      (* already a float *)
      if ltype = f64_t then e else

      (* change to float *)
      if ltype = i32_t || ltype = i8_t
      then (L.build_sitofp e f64_t "sitofp" builder)

      (* never reached *)
      else e
    in

    (* Get a random number *)
    let rand_number builder =
      let randint = L.build_call rand_func [| |] "rand" builder in
      (* 32767 is the minimum guaranteed number generated by rand *)
      let randint = L.build_urem randint (L.const_int i32_t 32767) "randint"
        builder in
      let e = build_float_of builder randint in
      L.build_fdiv e (L.const_float f64_t 32767.0) "randfloat" builder
    in

    let build_trans_size builder nmoves nplayers =

      let fmoves = build_float_of builder nmoves in
      let fplayers = build_float_of builder nplayers in
      let ftrans = L.build_call pow_func [| fmoves; fplayers |] "exp"
        builder in
      L.build_fptoui ftrans i32_t "size" builder
    in

    let build_trans_access builder strategy trans_size state trans =
      let transaddr = L.build_load (build_get_field builder strategy
        (L.const_int i32_t 3)) "transaddr" builder in
      let state_ind = L.build_mul trans_size state "state" builder in
      let trans_ind = L.build_add trans state_ind  "state" builder in
      L.build_gep transaddr [| trans_ind |] "access" builder
    in

    let build_sprintf builder args =
      L.build_call sprintf_func args "sprintf" builder
    in

    let build_string_alloca builder size =
      L.build_array_alloca i8_t size "stralloca" builder
    in

    let build_strcat builder dest source =
      L.build_call strcat_func [| dest ; source |] "strcat" builder
    in

    (* Compute a ^ b *)
    let build_pow builder a b =
      let fa = build_float_of builder a in
      let fb = build_float_of builder b in
      L.build_call pow_func [| fa; fb |] "pow" builder
    in

    (* Compute (transi % (nmoves ^ movesi)) / (nmoves ^ (movesi - 1)).
     * This retrieves the move value from the current transition. *)
    let build_get_move builder movei nmoves transi =
      let decmovei = L.build_sub movei (L.const_int i32_t 1) "decmovei"
        builder in
      let nmoves_pow_movei = build_pow builder nmoves movei in
      let nmoves_pow_decmovei = build_pow builder nmoves decmovei in
      let pow1 = L.build_fptoui nmoves_pow_movei i32_t "fptoui" builder in
      let pow2 = L.build_fptoui nmoves_pow_decmovei i32_t "fptoui" builder in
      let transi_rem_powdec = L.build_urem transi pow1 "urem" builder in
      L.build_sdiv transi_rem_powdec pow2 "div" builder
    in

    let build_strategy_string builder e =

      let nplayers = L.build_load (build_get_field builder e
        (L.const_int i32_t 0)) "nplayers" builder in
      let nmoves = L.build_load (build_get_field builder e
        (L.const_int i32_t 1)) "nmoves" builder in
      let nstates = L.build_load (build_get_field builder e
        (L.const_int i32_t 2)) "nstates" builder in

      (* Based on formats of trans_fmt, move_fmt, and state_fmt, string size
       * should be at least ((nplayers x 2 + 15) x ntrans + 16) x nstates *)
      let move_size = L.build_mul nplayers (L.const_int i32_t 2) "move_size"
        builder in
      let moves_size = L.build_add move_size (L.const_int i32_t 15) "moves_size"
        builder in
      let ntrans = build_trans_size builder nmoves nplayers in

      let temp1 = L.build_mul ntrans moves_size "temp1" builder in
      let state_size = L.build_add temp1 (L.const_int i32_t 16) "state_size"
        builder in
      let strat_str_size = L.build_mul state_size nstates "strat_str_size"
        builder in
      let strofstrat = build_string_alloca builder strat_str_size in
      ignore (build_sprintf builder [| strofstrat; clear_fmt |]);

      (* Initialize values for while loops *)
      let init_env = child_env local_env in
      ignore (add_to_env init_env builder (Int, "statei"));
      ignore (add_to_env init_env builder (Int, "transi"));
      ignore (add_to_env init_env builder (Int, "movei"));
      ignore (L.build_store (L.const_int i32_t 0)
        (lookup init_env "statei") builder);

      (******************************* While 1 ********************************)
      (* Basic block for while condition *)
      let cond1_bb = L.append_block context "whileone" the_function in
        ignore (L.build_br cond1_bb builder);

      (* Basic block for while loop *)
      let loop1_bb = L.append_block context "whileone_loop" the_function in
      let loop1_builder = (L.builder_at_end context loop1_bb) in

      (* Set transi to 0 *)
      ignore (L.build_store (L.const_int i32_t 0)
        (lookup init_env "transi") loop1_builder);
      (* Get location of current transition *)
      let statei = L.build_load (lookup init_env "statei") "load"
        loop1_builder in
      let transi = L.build_load (lookup init_env "transi") "load"
        loop1_builder in

      let current_trans = build_trans_access loop1_builder e ntrans statei
        transi in

      (* Get current output move, initialize state string by clearing it, print
       * current state and its output move *)
      let current_output = L.build_load (build_get_field loop1_builder
        current_trans (L.const_int i32_t 0)) "current_output" loop1_builder in
      let strofstate = build_string_alloca loop1_builder
        (L.const_int i32_t 16) in
      ignore (build_sprintf loop1_builder [| strofstate; clear_fmt |]);
      ignore (build_sprintf loop1_builder [| strofstate; state_fmt; statei;
          current_output|]);
      ignore (build_strcat loop1_builder strofstrat strofstate);
      (**************************** Nested while 2 ****************************)
      (* Basic block for while condition *)
      let cond2_bb = L.append_block context "whiletwo" the_function in
        ignore (L.build_br cond2_bb loop1_builder);

      (* Basic block for while loop *)
      let loop2_bb = L.append_block context "whiletwo_loop" the_function in
      let loop2_builder = (L.builder_at_end context loop2_bb) in

      (* Initialize move and transition strings *)
      let moves_str_size = L.build_mul nmoves (L.const_int i32_t 2) "mul"
        loop2_builder in
      let trans_str_size = L.build_add moves_str_size (L.const_int i32_t 15)
        "add" loop2_builder in
      let strofmoves = build_string_alloca loop2_builder moves_str_size in
      ignore (build_sprintf loop2_builder [| strofmoves; clear_fmt |]);
      let stroftrans = build_string_alloca loop2_builder trans_str_size in
      ignore (build_sprintf loop2_builder [| stroftrans; clear_fmt |]);

      ignore (L.build_store nplayers (lookup init_env "movei") loop2_builder);
      (**************************** Nested while 3 ****************************)
      (* Basic block for while condition *)
      let cond3_bb = L.append_block context "whilethree" the_function in
        ignore (L.build_br cond3_bb loop2_builder);

      (* Basic block for while loop *)
      let loop3_bb = L.append_block context "whilethree_loop" the_function in
      let loop3_builder = (L.builder_at_end context loop3_bb) in

      (* Initialize move and transition strings *)
      let movei = L.build_load (lookup init_env "movei") "load" loop3_builder in
      let transi = L.build_load (lookup init_env "transi") "load"
        loop3_builder in
      let current_move = build_get_move loop3_builder movei nmoves transi in
      let strofmove = build_string_alloca loop3_builder (L.const_int i32_t 2) in
      ignore (build_sprintf loop3_builder [| strofmove; move_fmt;
        current_move |]);
      ignore (build_strcat loop3_builder strofmoves strofmove);
      let movei_dec = L.build_sub movei (L.const_int i32_t 1) "sub"
        loop3_builder in
      ignore (L.build_store movei_dec (lookup init_env "movei") loop3_builder);
      add_terminal loop3_builder (L.build_br cond3_bb);
      (* Builder at end of the condition block *)
      let cond3_builder = L.builder_at_end context cond3_bb in
      (* Add instruction at end of condition block
       * to compute the boolean value *)
      let bool_val = L.build_icmp L.Icmp.Sgt (L.build_load (lookup init_env
        "movei") "load" cond3_builder) (L.const_int i32_t 0) "sgt" cond3_builder
      in
      let merge3_bb = L.append_block context "merge" the_function in
      (* Add branch at end of condition block based on bool_val *)
      ignore (L.build_cond_br bool_val loop3_bb merge3_bb cond3_builder);

      let loop2_builder = L.builder_at_end context merge3_bb in
      (************************ End of nested while 3 *************************)
      let statei = L.build_load (lookup init_env "statei") "load"
        loop2_builder in
      let transi = L.build_load (lookup init_env "transi") "load"
        loop2_builder in
      let current_trans = build_trans_access loop2_builder e ntrans statei
        transi in

      let current_nextstate = L.build_load (build_get_field loop2_builder
        current_trans (L.const_int i32_t 1)) "current_nextstate"
        loop2_builder in
      ignore (build_sprintf loop2_builder [| stroftrans; trans_fmt; strofmoves;
        current_nextstate |]);
      ignore (build_strcat loop2_builder strofstrat stroftrans);
      let transi = L.build_load (lookup init_env "transi") "load"
        loop2_builder in
      let transi_inc = L.build_add transi (L.const_int i32_t 1) "add"
        loop2_builder in
      ignore (L.build_store transi_inc (lookup init_env "transi")
        loop2_builder);

      add_terminal loop2_builder (L.build_br cond2_bb);
      (* Builder at end of the condition block *)
      let cond2_builder = L.builder_at_end context cond2_bb in
      (* Add instruction at end of condition block
       * to compute the boolean value *)

      let bool_val = L.build_icmp L.Icmp.Slt (L.build_load (lookup init_env
        "transi") "load" cond2_builder) ntrans "slt"  cond2_builder in
      let merge2_bb = L.append_block context "merge" the_function in
      (* Add branch at end of condition block based on bool_val *)
      ignore (L.build_cond_br bool_val loop2_bb merge2_bb cond2_builder);

      let loop1_builder = L.builder_at_end context merge2_bb in
      (************************* End of nested while 2 ************************)
      let statei = L.build_load (lookup init_env "statei") "load"
        loop1_builder in
      let statei_inc = L.build_add statei (L.const_int i32_t 1) "add"
        loop1_builder in
      ignore (L.build_store statei_inc (lookup init_env "statei")
        loop1_builder);
      add_terminal loop1_builder (L.build_br cond1_bb);
      (* Builder at end of the condition block *)
      let cond1_builder = L.builder_at_end context cond1_bb in
      (* Add instruction at end of condition block
       * to compute the boolean value *)
      let bool_val = L.build_icmp L.Icmp.Slt (L.build_load (lookup init_env
        "statei") "load" cond1_builder) nstates "slt"  cond1_builder in
      let merge1_bb = L.append_block context "merge" the_function in
      (* Add branch at end of condition block based on bool_val *)
      ignore (L.build_cond_br bool_val loop1_bb merge1_bb cond1_builder);

      (* Reposition builder *)
      ignore (L.position_at_end (merge1_bb) builder);
      (**************************** End of while 1 ****************************)
      strofstrat
    in

    let build_string_of builder e =
      let ltype = L.type_of e in

      (* already a string *)
      if ltype = (ptr_t i8_t) then e else

      (* String representation of numbers never exceeds 32 characters  *)
      let strofnum = L.build_array_alloca i8_t (L.const_int i32_t 32)
        "strofnum" builder in

      (* Change int to string, copy it into strofnum, return strofnum *)
      if ltype = i32_t || ltype = i1_t
      then (ignore (L.build_call sprintf_func
        [| strofnum ; int_fmt ; e |] "sprintf" builder); strofnum)
      else

      if ltype = i8_t
      then (ignore (L.build_call sprintf_func
        [| strofnum ; int_fmt ; e |] "sprintf" builder); strofnum)
      else

      (* Change float to string, copy it into strofnum, return strofnum *)
      if ltype = f64_t
      then (ignore (L.build_call sprintf_func
        [| strofnum ; float_fmt ; e |] "sprintf" builder); strofnum)

      (* Build a while loop that appends strategy information *)
      else if ltype = (ptr_t strategy_t) then
        build_strategy_string builder e
      (* never reached *)
      else e
    in

    let build_float_op = function
        Add -> L.build_fadd
      | Sub -> L.build_fsub
      | Mul -> L.build_fmul
      | Div -> L.build_fdiv
      | Eq  -> L.build_fcmp L.Fcmp.Oeq
      | Ne  -> L.build_fcmp L.Fcmp.One
      | Lt  -> L.build_fcmp L.Fcmp.Olt
      | Le  -> L.build_fcmp L.Fcmp.Ole
      | Gt  -> L.build_fcmp L.Fcmp.Ogt
      | Ge  -> L.build_fcmp L.Fcmp.Oge
      | _       -> (* Not reached *) L.build_fadd
    in

    let build_int_op = function
        Add -> L.build_add
      | Sub -> L.build_sub
      | Mul -> L.build_mul
      | Div -> L.build_sdiv
      | And -> L.build_and
      | Or  -> L.build_or
      | Eq  -> L.build_icmp L.Icmp.Eq
      | Ne  -> L.build_icmp L.Icmp.Ne
      | Lt  -> L.build_icmp L.Icmp.Slt
      | Le  -> L.build_icmp L.Icmp.Sle
      | Gt  -> L.build_icmp L.Icmp.Sgt
      | Ge  -> L.build_icmp L.Icmp.Sge
      | _       -> (* Not reached *) L.build_fadd
    in

    (* Build an array of type typ and size size and return a pointer to it *)
    let build_array builder typ size =
      (* Allocate room for array struct *)
      let newarray = L.build_alloca (array_t typ)
        "newarray" builder in
      (* Allocate room for contents *)
      let contents = L.build_array_alloca typ size "contents" builder in
      (* Get pointer to array size field *)
      let sizedest = L.build_gep newarray [| L.const_int i32_t 0;
        L.const_int i32_t 0 |] "ptrdest" builder in
      (* Get pointer to contents field *)
      let ptrdest = L.build_gep newarray [| L.const_int i32_t 0;
        L.const_int i32_t 1 |] "ptrdest" builder in

      ignore (L.build_store size sizedest builder);
      ignore (L.build_store contents ptrdest builder);

      newarray
    in

    (* Build a game of nmoves and nplayers and return a pointer to it *)
    let build_game builder nmoves nplayers =
      let newgame = L.build_alloca game_t "newgame" builder in
      let fmoves = build_float_of builder nmoves in
      let fplayers = build_float_of builder nplayers in
      let foutcomes = L.build_call pow_func [| fmoves; fplayers |] "exp"
        builder in
      let fsize = L.build_fmul fplayers foutcomes "fsize" builder in
      let size = L.build_fptoui fsize i32_t "size" builder in
      let outcomes = L.build_array_alloca f64_t size "outcomes" builder in

      (* Get pointers to fields *)
      let nplayersdest = L.build_gep newgame [| L.const_int i32_t 0;
        L.const_int i32_t 0 |] "nplayersdest" builder in
      let nmovesdest = L.build_gep newgame [| L.const_int i32_t 0;
        L.const_int i32_t 1 |] "nmovesdest" builder in
      let ptrdest = L.build_gep newgame [| L.const_int i32_t 0;
        L.const_int i32_t 2 |] "ptrdest" builder in

      ignore (L.build_store nplayers nplayersdest builder);
      ignore (L.build_store nmoves nmovesdest builder);
      ignore (L.build_store outcomes ptrdest builder);
      newgame
    in

    (* Calculate an index within an array based on the moves played.
     * Perform calculation:
     * Sum from i = 0 to nplayers-1 of (move_i x nmoves^i) *)
    let rec build_index builder moves nmoves nplayers intplayers i =
      if i = intplayers then (L.const_int i32_t 0) else
      let fmoves = build_float_of builder nmoves in
      let fplayers = build_float_of builder nplayers in

      let move = L.build_load (build_array_access builder moves
        (L.const_int i32_t i)) "move" builder in
      let fmove = build_float_of builder move in

      let temp = L.build_call pow_func [| fmoves;
        (L.const_uitofp (L.const_int i32_t i) f64_t) |] "temp" builder in
      let temp2 = L.build_fmul temp fmove "temp2" builder in
      let current = L.build_fptoui temp2 i32_t "current" builder in

      L.build_add current (build_index builder moves fmoves fplayers
        intplayers (i + 1)) "result" builder
    in

    let build_get_player_move builder player =
      let state = L.build_load (build_get_field builder player
        (L.const_int i32_t 3)) "state" builder in
      let strategy = L.build_load (build_get_field builder player
        (L.const_int i32_t 0)) "strategy" builder in
      let nplayers = L.build_load (build_get_field builder strategy
        (L.const_int i32_t 0)) "nplayers" builder in
      let nmoves = L.build_load (build_get_field builder strategy
        (L.const_int i32_t 1)) "nmoves" builder in
      let ntrans = build_trans_size builder nmoves nplayers in
      let current_trans = build_trans_access builder strategy ntrans state
        (L.const_int i32_t 0) in
      let output = L.build_load (build_get_field builder current_trans
        (L.const_int i32_t 0)) "output" builder in
        output
    in


    (* Calculate trans access from a list of moves, similar to
      build_moves_payoff_access *)
    let build_moves_trans_access builder strategy intplayers moves statei =
      let nplayers = L.build_load (build_get_field builder strategy
        (L.const_int i32_t 0)) "nplayers" builder in
      let nmoves = L.build_load (build_get_field builder strategy
        (L.const_int i32_t 1)) "nmoves" builder in
      let ntrans = build_trans_size builder nmoves nplayers in
      (* Address of transition array *)
      let transaddr = L.build_load (build_get_field builder strategy
        (L.const_int i32_t 3)) "transaddr" builder in
      let temp_ind1 = L.build_mul ntrans statei "start"
        builder in
      let temp_ind2 = build_index builder moves nmoves nplayers intplayers 0 in
      let trans_ind = L.build_add temp_ind1 temp_ind2 "index" builder in
      L.build_gep transaddr [| trans_ind |] "access" builder
    in

    (* Return an access to the location of the payoff for playeri *)
    let build_moves_payoff_access builder game playeri moves intplayers =
      let nplayers = L.build_load (build_get_field builder game
        (L.const_int i32_t 0)) "nplayers" builder in
      let nmoves = L.build_load (build_get_field builder game
        (L.const_int i32_t 1)) "nmoves" builder in
      (* Address of payoff matrix *)
      let payaddr = L.build_load (build_get_field builder game
        (L.const_int i32_t 2)) "payaddr" builder in
      let temp3 = build_index builder moves nmoves nplayers intplayers 0 in
      (* Multiply by nplayers; each player gets one payoff *)
      let temp_ind = L.build_mul temp3 nplayers "temp3" builder in
      let player_ind = L.build_add (L.const_int i32_t playeri) temp_ind
        "playerind" builder in
      let access = L.build_gep payaddr [| player_ind |] "access" builder in
      access
    in

    (* Build a strategy of nmoves, nplayers, and nstates.
     * Return a pointer to it. *)
    let build_strategy builder nmoves nplayers nstates =
      let newstrategy = L.build_alloca strategy_t "newstrategy" builder in
      let transsize = build_trans_size builder nmoves nplayers in
      let size = L.build_mul transsize nstates "size" builder in
      let transitions = L.build_array_alloca trans_t size "trans" builder
      in

      (* Get pointers to fields *)
      let nplayersdest = L.build_gep newstrategy [| L.const_int i32_t 0;
        L.const_int i32_t 0 |] "nplayersdest" builder in
      let nmovesdest = L.build_gep newstrategy [| L.const_int i32_t 0;
        L.const_int i32_t 1 |] "nmovesdest" builder in
      let nstatesdest = L.build_gep newstrategy [| L.const_int i32_t 0;
        L.const_int i32_t 2 |] "nstatesdest" builder in
      let ptrdest = L.build_gep newstrategy [| L.const_int i32_t 0;
        L.const_int i32_t 3 |] "ptrdest" builder in

      ignore (L.build_store nplayers nplayersdest builder);
      ignore (L.build_store nmoves nmovesdest builder);
      ignore (L.build_store nstates nstatesdest builder);
      ignore (L.build_store transitions ptrdest builder);
      newstrategy
    in

    let build_copy_strategy builder source dest fraction error =
      let nplayers = L.build_load (build_get_field builder source
        (L.const_int i32_t 0)) "nplayers" builder in
      let nmoves = L.build_load (build_get_field builder source
        (L.const_int i32_t 1)) "nmoves" builder in
      let nstates = L.build_load (build_get_field builder source
        (L.const_int i32_t 2)) "nstates" builder in
      let ntrans = build_trans_size builder nmoves nplayers in
      let size = L.build_mul ntrans nstates "size" builder in

      let fsize = build_float_of builder size in
      let fmoves = build_float_of builder nmoves in
      let fstates = build_float_of builder nstates in

      let fcopy_size = L.build_fmul fsize fraction "fcopy_size" builder in
      let copy_size = L.build_fptoui fcopy_size i32_t "copy_size" builder in

      let copy_env = child_env local_env in
      ignore (add_to_env copy_env builder (Int, "transi"));
      ignore (L.build_store (L.const_int i32_t 0)
        (lookup copy_env "transi") builder);
      (***************************** Begin while ******************************)
      (* Basic block for while condition *)
      let cond_bb = L.append_block context "copycond" the_function in
        ignore (L.build_br cond_bb builder);
      (* Basic block for while loop: get the source, dest output move and
       * next state. *)
      let loop_bb = L.append_block context "copyloop" the_function in
      let loop_builder = (L.builder_at_end context loop_bb) in
      let transi = L.build_load (lookup copy_env "transi") "load"
        loop_builder in
      let sourceaddr = L.build_load (build_get_field loop_builder source
        (L.const_int i32_t 3)) "sourceaddr" loop_builder in
      let destaddr = L.build_load (build_get_field loop_builder dest
        (L.const_int i32_t 3)) "destaddr" loop_builder in
      let source_trans = L.build_gep sourceaddr [| transi |] "source"
        loop_builder in
      let dest_trans = L.build_gep destaddr [| transi |] "dest" loop_builder in
      let source_output = L.build_load (build_get_field loop_builder
        source_trans (L.const_int i32_t 0)) "source_output" loop_builder in
      let dest_output = build_get_field loop_builder dest_trans
        (L.const_int i32_t 0) in
      let source_nextstate = L.build_load (build_get_field loop_builder
        source_trans (L.const_int i32_t 1)) "source_nextstate" loop_builder in
      let dest_nextstate = build_get_field loop_builder dest_trans
          (L.const_int i32_t 1) in
      let rand1 = rand_number loop_builder in
      (****************************** Begin if1 *******************************)
      (* Create instructions to evaluate condition at end of builder *)
      let bool_val1 = (L.build_fcmp L.Fcmp.Olt) rand1 error "randcomp"
        loop_builder in
      (* Create merge block *)
      let merge1_bb = L.append_block context "merge" the_function in
      (* Create then block, ensure it has a terminator *)
      let then1_bb = L.append_block context "then" the_function in
      let then1_builder = L.builder_at_end context then1_bb in
      let rand = rand_number then1_builder in
      let frandmove = L.build_fmul rand fmoves "frandmove" then1_builder in
      let randmove = L.build_fptoui frandmove i32_t "randmove" then1_builder in
      ignore (L.build_store randmove dest_output then1_builder);
      add_terminal then1_builder (L.build_br merge1_bb);

      (* Create else block, ensure it has a terminator *)
      let else1_bb = L.append_block context "else" the_function in
      let else1_builder = (L.builder_at_end context else1_bb) in
      ignore (L.build_store source_output dest_output else1_builder);
      add_terminal else1_builder (L.build_br merge1_bb);
      (* Create branch instruction at end of builder *)
      ignore (L.build_cond_br bool_val1 then1_bb else1_bb loop_builder);
      (* Move builder to end of merge block *)
      let loop_builder = L.builder_at_end context merge1_bb in
      (******************************** End if ********************************)
      let rand2 = rand_number loop_builder in
      (*************************** Begin second if ****************************)
      (* Create instructions to evaluate condition at end of builder *)
      let bool_val2 = (L.build_fcmp L.Fcmp.Olt) rand2 error "randcomp"
        loop_builder in
      (* Create merge block *)
      let merge2_bb = L.append_block context "merge" the_function in
      (* Create then block, ensure it has a terminator *)
      let then2_bb = L.append_block context "then" the_function in
      let then2_builder = L.builder_at_end context then2_bb in
      let rand = rand_number then2_builder in
      let frandstate = L.build_fmul rand fstates "frandstate" then2_builder in
      let randstate = L.build_fptoui frandstate i32_t "randstate"
        then2_builder in
      ignore (L.build_store randstate dest_nextstate then2_builder);
      add_terminal then2_builder (L.build_br merge2_bb);
      (* Create else block, ensure it has a terminator *)
      let else2_bb = L.append_block context "else" the_function in
      let else2_builder = (L.builder_at_end context else2_bb) in
      ignore (L.build_store source_nextstate dest_nextstate else2_builder);
      add_terminal else2_builder (L.build_br merge2_bb);
      (* Create branch instruction at end of builder *)
      ignore (L.build_cond_br bool_val2 then2_bb else2_bb loop_builder);
      (* Move builder to end of merge block *)
      let loop_builder = L.builder_at_end context merge2_bb in
      (**************************** End second if *****************************)
      let transi_inc = L.build_add transi (L.const_int i32_t 1)
        "inc" loop_builder in
      ignore (L.build_store transi_inc (lookup copy_env "transi")
        loop_builder);
      add_terminal loop_builder (L.build_br cond_bb);
      (* Builder at end of the condition block *)
      let cond_builder = L.builder_at_end context cond_bb in
      (* Add instruction at end of condition block
       * to compute the boolean value *)
      let bool_val = (L.build_icmp L.Icmp.Slt) (L.build_load
        (lookup copy_env "transi") "transi" cond_builder) copy_size
        "statecomp" cond_builder in
      let merge_bb = L.append_block context "merge" the_function in
      (* Add branch at end of condition block based on bool_val *)
      ignore (L.build_cond_br bool_val loop_bb merge_bb cond_builder);
      ignore (L.position_at_end merge_bb builder);
      (******************************* End while ******************************)
      dest
    in

    (* Build a player using strategy with discount factor delta *)
    let build_player builder strategy delta =
      let newplayer = L.build_alloca player_t "newplayer" builder in

      (* Get pointers to fields *)
      let strategydest = L.build_gep newplayer [| L.const_int i32_t 0;
        L.const_int i32_t 0 |] "strategydest" builder in
      let deltadest = L.build_gep newplayer [| L.const_int i32_t 0;
        L.const_int i32_t 1 |] "deltadest" builder in
      let payoffdest = L.build_gep newplayer [| L.const_int i32_t 0;
        L.const_int i32_t 2 |] "payoffdest" builder in
      let statedest = L.build_gep newplayer [| L.const_int i32_t 0;
        L.const_int i32_t 3 |] "statedest" builder in
      let roundsdest = L.build_gep newplayer [| L.const_int i32_t 0;
        L.const_int i32_t 4 |] "roundsdest" builder in

      (* Get details of player strategy *)
      let nplayers = L.build_load (build_get_field builder strategy
        (L.const_int i32_t 0)) "nplayers" builder in
      let nmoves = L.build_load (build_get_field builder strategy
        (L.const_int i32_t 1)) "nmoves" builder in
      let nstates = L.build_load (build_get_field builder strategy
        (L.const_int i32_t 2)) "nstates" builder in
      let newstrategy = build_strategy builder nmoves nplayers nstates in
      (* Copy strategy into newstrategy. The floats represent the fraction to be
       * copied and the error, respectively. *)
      ignore (build_copy_strategy builder strategy newstrategy (L.const_float
        f64_t 1.0) (L.const_float f64_t 0.0));
      ignore (L.build_store newstrategy strategydest builder);
      ignore (L.build_store delta deltadest builder);
      ignore (L.build_store (L.const_float f64_t 0.0) payoffdest builder);
      (* Players start in state 0 *)
      ignore (L.build_store (L.const_int i32_t 0) statedest builder);
      ignore (L.build_store (L.const_int i32_t 0) roundsdest builder);
      newplayer
    in

    (* Initialize the array "moves" in env. The array "moves" corresponds to a
     * move set by each player. Each wild card is initially set to 0. *)
    let rec prepare_wild_info env builder player = function
        Wild::tl ->
          (* Store 0 in wild card entry, then store next player's move *)
          let wild = build_array_access builder (lookup env "moves")
            (L.const_int i32_t player)
          in
          ignore (L.build_store (L.const_int i32_t 0) wild builder);
          prepare_wild_info env builder (player + 1) tl;
      | Move(str)::tl ->
          let move =
            build_array_access builder (lookup env "moves")
            (L.const_int i32_t player)
          in
          (* Perform look up for move in parent environment *)
          let parent = (match env.parent with Some(p) -> p | _ -> env) in
          let number = L.build_load (lookup parent str) str builder
          in ignore (L.build_store number move builder);
          prepare_wild_info env builder (player + 1) tl;
      | [] -> () (* Each player's move has been recorded *)
    in

    (* Function that records information for lists containing wild card
     * moves using a for loop. It accepts a store_info function, which
     * computes an array access based on the moves played, and stores info
     * in obj. Env must contain an array entitled "moves" *)
    let rec record_wild_info env builder store_info obj info nmoves player
       ival1 ival2 = function
        Wild::tl ->
          (* Access the value of wild. It is set to 0 by default *)
          let wild = build_array_access builder (lookup env "moves")
            (L.const_int i32_t player)
          in
          ignore (L.build_store (L.const_int i32_t 0) wild builder);
          (* Create condition block *)
          let cond_bb = L.append_block context "wildcond" the_function in
            ignore (L.build_br cond_bb builder);
          (* Create loop block *)
          let loop_bb = L.append_block context "wildloop" the_function in
          (* Body of loop *)
          let loop_builder = L.builder_at_end context loop_bb in
          (* Recursion: add nested loop *)
          let loop_builder = record_wild_info env loop_builder store_info obj
            info nmoves (player + 1) ival1 ival2 tl
          in
          (* Increment wild *)
          let next = L.build_add (L.build_load wild "loadwild"
            loop_builder) (L.const_int i32_t 1) "next" loop_builder
          in
          ignore (L.build_store next wild loop_builder);
          (* Connect back to condition block *)
          add_terminal loop_builder (L.build_br cond_bb);
          let cond_builder = L.builder_at_end context cond_bb in
          (* Compute the boolean value *)
          let bool_val = (L.build_icmp L.Icmp.Slt) (L.build_load
            wild "player" cond_builder) nmoves "wildcomp"
            cond_builder
          in
          let merge_bb = L.append_block context "merge" the_function in
          (* Add branch at end of condition block based on bool_val *)
          ignore (L.build_cond_br bool_val loop_bb merge_bb cond_builder);
          L.builder_at_end context merge_bb
      | Move(_)::tl ->
          (* This player doesn't have a wild card move, simply move on to
           * next player without incrementing this player's move. *)
          record_wild_info env builder store_info obj info nmoves
            (player + 1) ival1 ival2 tl
      | [] ->
          (* The list is now exhausted, we are building at the core of the
           * nested "wild" loops. Store info in object using an index computed
           * according to "moves" *)
          store_info env builder obj nmoves ival1 ival2 0 info
    in

    let rec expr env builder = function
        S.IntLit(i) -> L.const_int i32_t i
      | S.BoolLit(b) -> L.const_int i1_t (if b then 1 else 0)
      | S.FloatLit(f) -> L.const_float f64_t f
      | S.StringLit(str) -> L.build_global_stringptr str "str" builder
      | S.Noexpr -> L.const_int i32_t 0
      | S.ArrayLit(typ, e) -> let e' = expr env builder e in
          build_array builder (ltype_of_typ typ) e'
      | S.GameLit(nmoves,ol) ->
          let
            nmoves' = expr env builder nmoves
          in
          let intplayers =
            (match ol with ((ml,_)::_) -> List.length ml | [] -> 0)
          in
          let nplayers' = L.const_int i32_t intplayers in
          let
            game = build_game builder nmoves' nplayers'
          in
          (* Create initialization game outcome, used below to set all payoffs
           * to 0. *)
          let rec initoutcome i =
            if i = intplayers then ([],[]) else
              let (wilds, zeros) = initoutcome (i+1) in
              (Wild::wilds, (S.FloatLit 0.0)::zeros)
          in
          let ol = (initoutcome 0)::ol in

          (* Create environment with a move index representing each player. *)
          let game_env = child_env env in
            ignore (add_to_env game_env builder (Array(Int), "moves"));
            ignore (L.build_store (build_array builder i32_t nplayers')
              (lookup game_env "moves") builder);

          (* The store_info function to be used by record_wild_info *)
          let rec store_payoffs env builder game nmoves intplayers playeri
            ival2 = function
              payoff::tl ->
                (* Compute payoffs based on information in parent environment *)
                let parent = (match env.parent with Some(p) -> p | _ -> env) in
                let payoff' = build_float_of builder
                  (expr parent builder payoff) in
                (* Build the payoff access to find where to store the payoffs *)
                let
                  access = build_moves_payoff_access builder game playeri
                    (lookup env "moves") intplayers
                in
                (* Now that the access has been computed, store the payoff *)
                ignore(L.build_store payoff' access builder);
                store_payoffs env builder game nmoves intplayers
                  (playeri + 1) ival2 tl
            | [] -> builder
          in

          (* Get a new builder by folding a list of outcomes into
           * prepare_wild_info, then record_wild_info *)
          let new_builder = List.fold_left (fun b (ml, pl) ->
            (* Reinitialize the "moves" array *)
            prepare_wild_info game_env b 0 ml;
            (* Get a new builder from record_wild_info *)
            record_wild_info game_env b store_payoffs game pl nmoves'
              0 intplayers 0 ml) builder ol
          in

          (* Reposition builder *)
          ignore (L.position_at_end (L.insertion_block new_builder) builder);
          game

      | S.StrategyLit(nmoves, nstates, sl) ->
          let nmoves' = expr env builder nmoves in
          let nstates' = expr env builder nstates in
          let intplayers =
            (match sl with
                (_,_,trans)::_ ->
                    (match trans with (ml,_)::_ -> List.length ml | [] -> 0)
              | [] -> 0
            )
          in
          let nplayers' = L.const_int i32_t intplayers in
          let strategy = build_strategy builder nmoves' nplayers' nstates' in

          (* Store each strategy state number, then store each strategy state
           * output move. Find the number of states that have a defined output
           * move. *)
          let strategy_env = child_env env in
            ignore (add_to_env strategy_env builder (Array(Int), "outputs"));
            ignore (L.build_store (build_array builder i32_t nstates')
              (lookup strategy_env "outputs") builder);
          let rec store_state_info statei = function
              (str,e,_)::tl ->
                let output = build_array_access builder (lookup strategy_env
                  "outputs") (L.const_int i32_t statei)
                in
                ignore (L.build_store (expr strategy_env builder e) output
                  builder);
                ignore (add_to_env strategy_env builder (Int, str));
                ignore (L.build_store (L.const_int i32_t statei)
                (lookup strategy_env str) builder);
                store_state_info (statei + 1) tl;
            | [] -> statei
          in
          (* Useful values for initialization *)
          let defstates = store_state_info 0 sl in
          let ntrans = build_trans_size builder nmoves' nplayers' in

          (* Initialize all states: all undefined state transitions must be
           * to the state itself, and all undefined output moves must be 0. *)
          let init_env = child_env strategy_env in
          (* Add tracking indices *)
          ignore (add_to_env init_env builder (Int, "statei"));
          ignore (add_to_env init_env builder (Int, "transi"));
          ignore (L.build_store (L.const_int i32_t 0)
            (lookup init_env "statei") builder);

          (*************************** While loop 1 ***************************)
          (* Basic block for while condition *)
          let cond1_bb = L.append_block context "statecond" the_function in
            ignore (L.build_br cond1_bb builder);
          (* Basic block for while loop *)
          let loop1_bb = L.append_block context "state_loop" the_function in
          let loop1_builder = (L.builder_at_end context loop1_bb) in
            ignore (L.build_store (L.const_int i32_t 0)
              (lookup init_env "transi") loop1_builder);

          (************************ Nested while loop *************************)
          let cond2_bb = L.append_block context "transcond" the_function in
            ignore (L.build_br cond2_bb loop1_builder);
          let loop2_bb = L.append_block context "trans_loop" the_function in
          let loop2_builder =  (L.builder_at_end context loop2_bb) in
          (* Store current state as transition state *)
          let current_statei = L.build_load (lookup init_env "statei") "statei"
            loop2_builder in
          let current_transi = L.build_load (lookup init_env "transi") "transi"
            loop2_builder in
          let access = build_trans_access loop2_builder strategy ntrans
            current_statei current_transi in
          let current_nextstate = build_get_field loop2_builder access
            (L.const_int i32_t 1) in
          ignore (L.build_store current_statei current_nextstate loop2_builder);

          (***************************** If block *****************************)
          (* Create instructions to evaluate condition at end of builder *)
          let bool_val = (L.build_icmp L.Icmp.Slt) current_statei
            (L.const_int i32_t defstates) "ifcomp" loop2_builder in
          (* Create merge block *)
          let merge3_bb = L.append_block context "merge3" the_function in
          (* Create then block, ensure it has a terminator *)
          let then_bb = L.append_block context "then" the_function in
          let then_builder = L.builder_at_end context then_bb in

          (* Store output move set for current state *)
          let current_statei = L.build_load (lookup init_env "statei") "statei"
            then_builder in
          let current_transi = L.build_load (lookup init_env "transi") "transi"
            then_builder in
          let access = build_trans_access then_builder strategy ntrans
            current_statei current_transi in
          let current_output = build_get_field then_builder access
            (L.const_int i32_t 0) in
          let output = build_array_access then_builder
            (lookup init_env "outputs") current_statei in
          let outputmove = L.build_load output "outputmove" then_builder in
          ignore (L.build_store outputmove current_output then_builder);
          add_terminal then_builder (L.build_br merge3_bb);
          (* Create else block, ensure it has a terminator *)
          (* Store output move 0, store current state as transition state *)
          let else_bb = L.append_block context "else" the_function in
          let else_builder = (L.builder_at_end context else_bb) in
          let current_statei = L.build_load (lookup init_env "statei") "statei"
            else_builder in
          let current_transi = L.build_load (lookup init_env "transi") "transi"
            else_builder in
          let access = build_trans_access else_builder strategy ntrans
            current_statei current_transi in
          let current_output = build_get_field else_builder access
            (L.const_int i32_t 0) in
          ignore (L.build_store (L.const_int i32_t 0) current_output
            else_builder);
          add_terminal else_builder (L.build_br merge3_bb);

          (* Create branch instruction at end of builder *)
          ignore (L.build_cond_br bool_val then_bb else_bb loop2_builder);

          (* Move builder to end of merge block *)
          let loop2_builder = L.builder_at_end context merge3_bb in
          (************************* End of if block **************************)

          let current_transi = L.build_load (lookup init_env "transi") "transi"
            loop2_builder in
          let next_transi = L.build_add current_transi (L.const_int i32_t 1)
            "next" loop2_builder in
          ignore (L.build_store next_transi (lookup init_env "transi")
            loop2_builder);
          add_terminal loop2_builder (L.build_br cond2_bb);

          (* Builder at end of the condition block *)
          let cond2_builder = L.builder_at_end context cond2_bb in
          (* Add instruction at end of condition block
           * to compute the boolean value *)
          let bool_val = (L.build_icmp L.Icmp.Slt) (L.build_load
            (lookup init_env "transi") "transi" cond2_builder) ntrans
            "transcomp" cond2_builder
          in
          let merge2_bb = L.append_block context "merge2" the_function in
          (* Add branch at end of condition block based on bool_val *)
          ignore (L.build_cond_br bool_val loop2_bb merge2_bb cond2_builder);
          let loop1_builder = L.builder_at_end context merge2_bb in
          (********************* End of nested while loop *********************)

          let current_statei = L.build_load (lookup init_env "statei") "statei"
            loop1_builder in
          let next_statei = L.build_add current_statei (L.const_int i32_t 1)
            "next" loop1_builder in
          ignore (L.build_store next_statei (lookup init_env "statei")
              loop1_builder);
          add_terminal loop1_builder (L.build_br cond1_bb);

          (* Builder at end of the original condition block *)
          let cond1_builder = L.builder_at_end context cond1_bb in
          (* Add instruction at end of condition block
           * to compute the boolean value *)
          let bool_val = (L.build_icmp L.Icmp.Slt) (L.build_load
            (lookup init_env "statei") "statei" cond1_builder) nstates'
            "statecomp" cond1_builder
          in
          let merge1_bb = L.append_block context "merge1" the_function in
          (* Add branch at end of condition block based on bool_val *)
          ignore (L.build_cond_br bool_val loop1_bb merge1_bb cond1_builder);
          ignore (L.position_at_end merge1_bb builder);

          (* Ensure environment contains "moves" array with
           * move representing each player *)
          ignore (add_to_env init_env builder (Array(Int), "moves"));
          ignore (L.build_store (build_array builder i32_t nplayers')
            (lookup init_env "moves") builder);

          (* Define a recorder function for use by record_wild_info *)
          let store_nextstate env builder strategy nmoves intplayers statei
            player nextstate =
            (* init_env will be passed in, look for nextstate in parent env *)
            let parent = (match env.parent with Some(p) -> p | _ -> env) in
            let nextstate' =
              L.build_load (lookup parent nextstate) nextstate builder in
            let access = build_moves_trans_access builder strategy intplayers
                (lookup env "moves") (L.const_int i32_t statei) in
            let current_nextstate = build_get_field builder
              access (L.const_int i32_t 1) in
            ignore(L.build_store nextstate' current_nextstate builder);

            (* These arguments go unused, but they must fit the format of the
             * storing function. *)
            ignore(player); ignore(nmoves);

            builder

          in

          (* For each state, perform a list fold left on the transition list *)
          let rec get_new_builder builder statei = function
              (_,_,transl)::tl -> let new_builder =
                List.fold_left (fun b (ml,t) ->
                (* Reinitialize the "moves" array *)
                prepare_wild_info init_env b 0 ml;
                (* Get a new builder from record_wild_info*)
                record_wild_info init_env b store_nextstate strategy t nmoves'
                  0 intplayers statei ml) builder transl in
                  get_new_builder new_builder (statei + 1) tl
            | [] -> builder
          in

          let new_builder = get_new_builder builder 0 sl in

          (* Reposition builder *)
          ignore (L.position_at_end (L.insertion_block new_builder) builder);
          strategy

      | S.Range(e1, e2) ->
          let e1' = expr env builder e1 in
          let e2' = expr env builder e2 in
          let diff = L.build_sub e2' e1' "rangediff" builder in
          let size = L.build_add diff (L.const_int i32_t 1) "rangesize"
            builder in
          let range = build_array builder i32_t size in
          let rangeptr = L.build_alloca (ptr_t (array_t i32_t))
            "rangeptr" builder in
          ignore (L.build_store range rangeptr builder);
          let lastentry = build_array_access builder rangeptr diff in

          (* Create new environment and block to store information *)
          let range_env = child_env env in
          let range_bb = L.append_block context "range" the_function in
            ignore (L.build_br range_bb builder);
          let range_builder = L.builder_at_end context range_bb in
          ignore (add_to_env range_env range_builder (Int, "i"));
          ignore (L.build_store (L.const_int i32_t 0)
            (lookup range_env "i") range_builder);

          (* Create condition block *)
          let cond_bb = L.append_block context "while" the_function in
            ignore (L.build_br cond_bb range_builder);
          (* Create loop block *)
          let loop_bb = L.append_block context "while_loop" the_function in
          let loop_builder = L.builder_at_end context loop_bb in

          (* Body of loop *)
          let (* Load value of i *)
            curr_index = L.build_load (lookup range_env "i") "loadi"
              loop_builder
          in
          let (* Access current entry *)
            curr_entry = build_array_access loop_builder rangeptr curr_index
          in
          let (* Calculate value to be stored *)
            curr_value = L.build_add e1' curr_index "calcval" loop_builder
          in
          (* Store the value *)
          ignore (L.build_store curr_value curr_entry loop_builder);
          (* Increment i *)
          let iplusone = L.build_add (L.build_load (lookup range_env "i")
            "i" loop_builder) (L.const_int i32_t 1) "iplusone" loop_builder in
          ignore (L.build_store iplusone (lookup range_env "i") loop_builder);
          (* Connect back to condition block *)
          add_terminal loop_builder (L.build_br cond_bb);
          (* Builder at end of the condition block *)
          let cond_builder = L.builder_at_end context cond_bb in
          (* Compute the boolean value *)
          let bool_val = (L.build_icmp L.Icmp.Ne) (L.build_load lastentry
            "lastentry" cond_builder) e2' "rangecomp"
            cond_builder in

          let merge_bb = L.append_block context "merge" the_function in
          (* Add branch at end of condition block based on bool_val *)
          ignore (L.build_cond_br bool_val loop_bb merge_bb cond_builder);
          ignore (L.position_at_end merge_bb builder);
          range

      | S.PlayerLit(strategy, delta) ->
          let strategy' = expr env builder strategy in
          let delta' = expr env builder delta in
          let player = build_player builder strategy' delta' in
          player

      | S.Entry((_, name,_), index) ->
          let i' = expr env builder index
          and a' = lookup env name in
          let arrlen = L.build_load (build_get_arrlen builder (L.build_load a'
            name builder)) "arrlen" builder in
          let arrmax = L.build_sub arrlen (L.const_int i32_t 1) "sub" builder in
          build_print_error builder "Index out of bounds" L.Icmp.Sgt i' arrmax;
          L.build_load (build_array_access builder a' i') name builder

      | S.Id(_,name,_) ->  L.build_load (lookup env name) name builder
      | S.Att(e, a) when a.S.att_name = "string" ->

          let e' = expr env builder e in build_string_of builder e'
      | S.Att(e, a) when a.S.att_name = "len" ->
          let e' = expr env builder e in
          let typ = List.hd a.S.relevant_types in
          (match typ with
              Array(_) -> L.build_load (build_get_arrlen builder e') "arrlen"
                builder
            | String   -> L.build_call strlen_func [| e' |] "strlen" builder
            | _ -> (* Never reached *) build_get_arrlen builder e'
          )

      | S.Att(e, a) when a.S.att_name = "players" || a.S.att_name = "strategy" ->
          let e' = expr env builder e in
          L.build_load (build_get_field builder e' (L.const_int i32_t 0))
            "fieldzero" builder

      | S.Att(e, a) when a.S.att_name = "moves" || a.S.att_name = "delta" ->
          let e' = expr env builder e in
          L.build_load (build_get_field builder e' (L.const_int i32_t 1))
            "fieldone" builder

      | S.Att(e, a) when a.S.att_name = "size" || a.S.att_name = "payoff" ->
          let e' = expr env builder e in
          L.build_load (build_get_field builder e' (L.const_int i32_t 2))
            "fieldtwo" builder

      | S.Att(e, a) when a.S.att_name = "state" ->
          let e' = expr env builder e in
          L.build_load (build_get_field builder e' (L.const_int i32_t 3))
            "state" builder

      | S.Att(e, a) when a.S.att_name = "rounds" ->
          let e' = expr env builder e in
          L.build_load (build_get_field builder e' (L.const_int i32_t 4))
            "rounds" builder

        (* Reset player *)
      | S.Att(e, a) when a.S.att_name = "reset" ->
          let e' = expr env builder e in
          let payoff = build_get_field builder e'(L.const_int i32_t 2)
          and state = build_get_field builder e' (L.const_int i32_t 3)
          and rounds = build_get_field builder e' (L.const_int i32_t 4)
          in
          ignore (L.build_store (L.const_float f64_t 0.0) payoff builder);
          ignore (L.build_store (L.const_int i32_t 0) state builder);
          ignore (L.build_store (L.const_int i32_t 0) rounds builder);
          e'

      | S.Binop (e1, Cat, e2) ->
          let e1' = expr env builder e1 in
          let l1 = L.build_call strlen_func [| e1' |] "strlen" builder in
          let e2' = expr env builder e2  in
          let l2 = L.build_call strlen_func [| e2' |] "strlen" builder in
          let size = L.build_add l1 l2 "size" builder in
          let result = L.build_array_alloca i8_t size "result" builder in
          ignore (L.build_call strcpy_func [| result ; e1' |]
            "strcpy" builder);
          ignore (L.build_call strcat_func [| result ; e2' |]
            "strcat" builder);
          result

      | S.Binop (e1, op, e2) ->
          let e1' = expr env builder e1
          and e2' = expr env builder e2 in

          if (L.type_of e1') = f64_t || (L.type_of e2') = f64_t then
            (let e1' = build_float_of builder e1'
            and e2' = build_float_of builder e2' in
            ((build_float_op op) e1' e2' "tmp" builder))

          else ((build_int_op op) e1' e2' "tmp" builder)

      | S.Unop (uop, e) ->
          let e' = expr env builder e in
            (match uop with
                Neg -> L.build_neg
              | Not -> L.build_not) e' "tmp" builder

      | S.Call (f, el) ->
          let (fdef, fdecl) = SM.find f.name function_decls in
          let actuals =
            List.rev (List.map (expr env builder) (List.rev el)) in
          let result =
            (match fdecl.S.typ with
                Void -> ""
              | _ -> f.name ^ "_result"
            ) in
          L.build_call fdef (Array.of_list actuals) result builder

      | S.Rand -> rand_number builder

      | S.Att(_,_) -> L.const_int i32_t 0
    in

    let rec stmt env builder (*statement =
    print_endline (string_of_sast_stmt statement);
    match statement with*) = function
        (* Avoid terminators in middle of basic blocks *)
        S.Block(_, sl) ->
          let block_bb = L.append_block context "block" the_function in
            ignore (L.build_br block_bb builder);
          let block_builder = (List.fold_left (stmt (child_env env))
            (L.builder_at_end context block_bb) sl)
          in
          let merge_bb = L.append_block context "merge" the_function in
          add_terminal block_builder (L.build_br merge_bb);

          L.builder_at_end context merge_bb

      | S.Vdecl(typ,name,e) -> let e' = expr env builder e in
          let t = t_of_typ typ in
          ignore (add_to_env env builder (typ, name));
          ignore (build_store_typ t e' (lookup env name) builder); builder
      | S.Sdecl(sl) -> List.iter (fun (s,i) ->
          let i' = expr env builder (S.IntLit i) in
          ignore (add_to_env env builder (Int, s));
          ignore (L.build_store i' (lookup env s) builder)) sl; builder
      | S.SideCall(f, [e]) when f.name = "print" -> ignore (L.build_call
          printf_func [| print_fmt ; (expr env builder e) |] "printf" builder);
          builder
      | S.SideCall(f, [e]) when f.name = "println" -> ignore (L.build_call
          printf_func [| println_fmt ; (expr env builder e) |]
          "printf" builder); builder
      | S.SideCall(f, el) ->
          let (fdef, _) = SM.find f.name function_decls in
          let actuals =
            List.rev (List.map (expr env builder) (List.rev el)) in
          ignore (L.build_call fdef (Array.of_list actuals) "" builder); builder
      | S.Asn((e1,t), (e2,_)) ->
          let e2' = expr env builder e2 in
          let e1' =
            (match e1 with
                S.Id(_,name,_) -> lookup env name
              | (S.Entry((_,name,_),index)) ->
                  let i' = expr env builder index in
                  let a' = lookup env name in build_array_access builder a' i'
              | _ -> (* Never reached *) expr env builder e1
            )
          in
          ignore (build_store_typ t e2' e1' builder); builder
      | S.If ((cond_expr,_), then_stmt, else_stmt) ->
          (* Create instructions to evaluate condition at end of builder *)
          let bool_val = expr env builder cond_expr in
          (* Create merge block *)
          let merge_bb = L.append_block context "merge" the_function in
          (* Create then block, ensure it has a terminator *)
          let then_bb = L.append_block context "then" the_function in
            add_terminal (stmt env (L.builder_at_end context then_bb) then_stmt)
            (L.build_br merge_bb);

          (* Create else block, ensure it has a terminator *)
          let else_bb = L.append_block context "else" the_function in
            add_terminal (stmt env (L.builder_at_end context else_bb) else_stmt)
            (L.build_br merge_bb);

          (* Create branch instruction at end of builder *)
          ignore (L.build_cond_br bool_val then_bb else_bb builder);

          (* Move builder to end of merge block *)
          L.builder_at_end context merge_bb

      | S.While ((cond,_), loop) ->
          (* Basic block for while condition *)
          let cond_bb = L.append_block context "while" the_function in
            ignore (L.build_br cond_bb builder);

          (* Basic block for while loop *)
          let loop_bb = L.append_block context "while_loop" the_function in
            add_terminal (stmt env (L.builder_at_end context loop_bb) loop)
            (L.build_br cond_bb);

          (* Builder at end of the condition block *)
          let cond_builder = L.builder_at_end context cond_bb in
          (* Add instruction at end of condition block
           * to compute the boolean value *)
          let bool_val = expr env cond_builder cond in
          let merge_bb = L.append_block context "merge" the_function in
          (* Add branch at end of condition block based on bool_val *)
          ignore (L.build_cond_br bool_val loop_bb merge_bb cond_builder);

          L.builder_at_end context merge_bb

      | S.For(str, (e, t), s) ->
          let e' = expr env builder e in
          let typ = (match t with S.Array(t',_) -> t' | _ -> Int) in

          let for_env = child_env env in
          let info_env = child_env for_env in
          let eptr = L.build_alloca (ptr_t (array_t (ltype_of_typ typ)))
            "eptr" builder in
          ignore (L.build_store e' eptr builder);
          let size = L.build_load (build_get_arrlen builder e')
            "size" builder in
          let curr_entry = L.build_load (build_array_access builder
            eptr (L.const_int i32_t 0)) "current" builder
          in

          ignore (add_to_env for_env builder (typ, str));
          ignore (build_store_typ t curr_entry (lookup for_env str) builder);
          ignore (add_to_env info_env builder (Int, "i"));
          ignore (build_store_typ t (L.const_int i32_t 0) (lookup info_env "i")
          builder);

          (* Create condition block *)
          let cond_bb = L.append_block context "for" the_function in
            ignore (L.build_br cond_bb builder);
          (* Create loop block *)
          let loop_bb = L.append_block context "for_loop" the_function in

          (* Body of loop *)
          let loop_builder = stmt for_env (L.builder_at_end context loop_bb) s
          in

          (* Increment i *)
          let iplusone = L.build_add (L.build_load (lookup info_env "i")
            "i" loop_builder) (L.const_int i32_t 1) "iplusone" loop_builder in
          ignore (L.build_store iplusone (lookup info_env "i") loop_builder);
          let (* Load current entry *)
            curr_index = L.build_load (lookup info_env "i") "loadi"
              loop_builder
          in
          let curr_entry = L.build_load (build_array_access loop_builder
            eptr curr_index) "current" loop_builder
          in
          (* Store current entry into str *)
          ignore (build_store_typ t curr_entry (lookup for_env str)
            loop_builder);

          (* Connect back to condition block *)
          add_terminal loop_builder (L.build_br cond_bb);
          (* Builder at end of the condition block *)
          let cond_builder = L.builder_at_end context cond_bb in
          (* Compute the boolean value *)
          let bool_val = (L.build_icmp L.Icmp.Ne) (L.build_load
            (lookup info_env "i") "i" cond_builder) size "forcomp"
            cond_builder
          in

          let merge_bb = L.append_block context "merge" the_function in
          (* Add branch at end of condition block based on bool_val *)
          ignore (L.build_cond_br bool_val loop_bb merge_bb cond_builder);

          L.builder_at_end context merge_bb

      | S.Cross((p1,_), (frac,_), (p2,_)) ->
          let p1' = expr env builder p1
          and p2' = expr env builder p2
          and frac' = expr env builder frac
          in

          let strategy1 = L.build_load (build_get_field builder p1'
            (L.const_int i32_t 0)) "cross1" builder
          and strategy2 = L.build_load (build_get_field builder p2'
            (L.const_int i32_t 0)) "cross2" builder
          in

          let nplayers1 = L.build_load (build_get_field builder strategy1
            (L.const_int i32_t 0)) "nplayers" builder in
          let nplayers2 = L.build_load (build_get_field builder strategy2
            (L.const_int i32_t 0)) "nplayers" builder in
          let nmoves1 = L.build_load (build_get_field builder strategy1
            (L.const_int i32_t 1)) "nmoves" builder in
          let nmoves2 = L.build_load (build_get_field builder strategy2
            (L.const_int i32_t 1)) "nmoves" builder in
          let nstates1 = L.build_load (build_get_field builder strategy1
            (L.const_int i32_t 2)) "nstates" builder in
          let nstates2 = L.build_load (build_get_field builder strategy2
            (L.const_int i32_t 2)) "nstates" builder in

          build_print_error builder "Number of players doesn't match" L.Icmp.Ne
            nplayers1 nplayers2;
          build_print_error builder "Number of moves doesn't match" L.Icmp.Ne
            nmoves1 nmoves2;
          build_print_error builder "Number of states doesn't match" L.Icmp.Ne
            nstates1 nstates2;

          let temp1 = build_strategy builder nplayers1 nmoves1 nstates1 in
          let temp2 = build_copy_strategy builder strategy1 temp1 frac'
            (L.const_float f64_t 0.0) in
          ignore (build_copy_strategy builder strategy2 strategy1 frac'
            (L.const_float f64_t 0.0));
          ignore (build_copy_strategy builder temp2 strategy2 frac'
            (L.const_float f64_t 0.0)); builder

      | S.Mut((p1,_),(frac,_)) ->
          let p1' = expr env builder p1
          and frac' = expr env builder frac
          in
          let strategy1 = L.build_load (build_get_field builder p1'
            (L.const_int i32_t 0)) "mutate" builder in
          ignore (build_copy_strategy builder strategy1 strategy1
            (L.const_float f64_t 1.0) frac'); builder

      | S.Play(pl,(g,_)) ->
          let pl' = List.map (expr env builder) (List.map fst pl) in
          let g' = expr env builder g in
          let intplayers = List.length pl in
          let nplayers = (L.const_int i32_t intplayers) in
          let game_nplayers = L.build_load (build_get_field builder g'
            (L.const_int i32_t 0)) "nplayers" builder in
          let game_nmoves = L.build_load (build_get_field builder g'
            (L.const_int i32_t 1)) "nmoves" builder in
          build_print_error builder "Number of players doesn't match" L.Icmp.Ne
            nplayers game_nplayers;

          let play_env = child_env env in
            ignore (add_to_env play_env builder (Array(Int), "moves"));
            ignore (L.build_store (build_array builder i32_t nplayers)
              (lookup play_env "moves") builder);

          (* Store all players' output moves *)
          ignore (List.fold_left (fun i player ->
            let output = build_get_player_move builder player in
            let access = build_array_access builder (lookup play_env "moves")
              (L.const_int i32_t i) in
            ignore (L.build_store output access builder); i+1) 0 pl');

          let moves = (lookup play_env "moves") in
          ignore (List.fold_left (fun i player ->
            (* Load strategy information *)
            let strategy = L.build_load (build_get_field builder player
              (L.const_int i32_t 0)) "strategy" builder in
            let strategy_nplayers = L.build_load (build_get_field builder
              strategy (L.const_int i32_t 0)) "nplayers" builder in
            let strategy_nmoves = L.build_load (build_get_field builder
              strategy (L.const_int i32_t 1)) "nmoves" builder in

            build_print_error builder "Number of players doesn't match"
              L.Icmp.Ne strategy_nplayers game_nplayers;
            build_print_error builder "Number of moves doesn't match"
              L.Icmp.Ne strategy_nmoves game_nmoves;

            let game_payoff = L.build_load (build_moves_payoff_access builder g'
              i moves intplayers) "game_payoff" builder in

            (* Load player information *)
            let delta = L.build_load (build_get_field builder player
              (L.const_int i32_t 1)) "delta" builder in
            let payoff = L.build_load (build_get_field builder player
              (L.const_int i32_t 2)) "payoff" builder in
            let state = L.build_load (build_get_field builder player
              (L.const_int i32_t 3)) "state" builder in
            let rounds = L.build_load (build_get_field builder player
              (L.const_int i32_t 4)) "rounds" builder in

            (* Update information *)
            let discount = build_pow builder delta rounds in
            let temp_payoff = L.build_fmul game_payoff discount "tmp" builder in
            let new_payoff = L.build_fadd payoff temp_payoff "newpayoff" builder
            in
            let trans = build_moves_trans_access builder strategy intplayers
              moves state in
            let new_state = L.build_load (build_get_field builder trans
              (L.const_int i32_t 1)) "newstate" builder in

            let new_rounds = L.build_add (L.const_int i32_t 1) rounds
              "newrounds" builder in

            let payoff = build_get_field builder player (L.const_int i32_t 2) in
            let state = build_get_field builder player (L.const_int i32_t 3) in
            let rounds = build_get_field builder player (L.const_int i32_t 4) in

            (* Store information *)
            ignore (L.build_store new_payoff payoff builder);
            ignore (L.build_store new_state state builder);
            ignore (L.build_store new_rounds rounds builder); i+1
          ) 0 pl');
          builder

      | S.Return(e,_) ->
      ignore (match fdecl.S.typ with
            Void -> L.build_ret_void builder
          | _ -> let e' = expr env builder e in L.build_ret e' builder); builder
    in

    (* Build statements in function by putting them in a block *)
    let builder = stmt local_env builder
      (S.Block (fst fdecl.S.body, snd fdecl.S.body)) in

    add_terminal builder (match fdecl.S.typ with
        Void -> L.build_ret_void
      | typ -> L.build_ret (lconst_of_typ typ))
  in

  List.iter build_function_body functions;
  the_module
