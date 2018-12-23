(* File: semant.ml
 * Created: 11/14/2016
 *
 * COMSW4115 Fall 2016
 * replay
 * Eric D. Bolton <edb2129@columbia.edu> *)

open Printer
open Ast

module S = Sast
module SM = Map.Make(String)

let check contents =

  (* Helpers *)
  (* Raise an exception if the given list has a duplicate *)
  let report_duplicate list =
    let rec helper = function
        n1 :: n2 :: _ when n1 = n2 -> raise (DupError(n1))
      | _ :: t -> helper t
      | [] -> ()
    in helper (List.sort compare list)
  in

  (* Raise an exception if a variable declaration has a Void type *)
  let check_not_void = function
      (Void, s, _) -> raise (VoidError(s))
    | _ -> ()
  in

  (* Translate a Sast type into an Ast type *)
  let typ_of_t = function
      S.Int -> Int
    | S.Bool -> Bool
    | S.Float -> Float
    | S.Void -> Void
    | S.String -> String
    | S.Game(_) -> Game
    | S.Strategy(_) -> Strategy
    | S.Player -> Player
    | S.Array(typ,_) -> Array(typ)
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

  (* Ensure that the number of players in l is n *)
  let check_nplayers_equal n l =
    if n = List.length l then () else raise (IllegalOutcomeError(n))
  in

  (* Ensure that t is either a float or an int *)
  let check_float_or_int s t =
    if t = S.Int then ()
    else if t = S.Float then ()
      else raise (TypeError(Int, typ_of_t t, s))
  in

  (* Ensure that t1 and t2 have the same type. t1 is the expected type, t2 is
   * the checked type. *)
  let check_same_type s t1 t2 =
    if t1 = t2 then () else raise (TypeError(t1, t2, s))
  in

  (* Return the type of the array *)
  let get_array_type s = function
      Array(typ) -> typ
    | typ -> raise (TypeError(Array(Int), typ, s))
  in

  (* Return an initial expression for type t *)
  let get_init_expr = function
      Int -> IntLit 0
    | Bool -> BoolLit false
    | Float -> FloatLit 0.0
    | String -> StringLit ""
    | Void -> Noexpr
    | Game -> Object(Game, [IntLit 0; Payoffs([])])
    | Strategy -> Object(Strategy, [IntLit 0; IntLit 0; States([])])
    | Player -> Object(Player,
        [Object(Strategy, [IntLit 0; IntLit 0; States([])])])
    | Array(typ) -> Object(typ, [IntLit 0])
  in

  (* Ensure that t has a string attribute *)
  let check_has_string s = function
      S.Void -> raise (TypeError(String, Void, s))
    | S.Array(typ, _) -> raise (TypeError(String, Array(typ), s))
    | S.Game(_) -> raise (TypeError(String, Game, s))
    | S.Player -> raise (TypeError(String, Player, s))
    | _ -> ()
  in

  (* Built-in functions, represented as a symbol_table *)
  let built_in_env = {
      S.parent = None; S.constants = []; S.variables = []; S.functions =
        [{ typ = Void; name = "print"; params = [(String, "x")]; body = [] };
        { typ = Void; name = "println"; params = [(String, "x")]; body = [] }];
        S.state_labels = []; S.return_type = Void; S.has_return = true
      }
  in

  (* Built-in attributes, represented as a String Map *)
  let built_in_attrs = SM.add "len"
    { S.relevant_types = [String]; S.att_name = "len"; S.att_t = S.Int }
    (SM.add "string"
    { S.relevant_types = [Int; Bool; Float; String; Strategy];
      S.att_name = "string"; S.att_t = S.String }
    (SM.add "size"
    { S.relevant_types = [Strategy]; S.att_name = "size"; S.att_t = S.Int }
    (SM.add "moves"
    { S.relevant_types = [Strategy; Game]; S.att_name = "moves";
      S.att_t = S.Int }
    (SM.add "players"
    { S.relevant_types = [Strategy; Game]; S.att_name = "players";
      S.att_t = S.Int }
    (SM.add "state"
    { S.relevant_types = [Player]; S.att_name = "state"; S.att_t = S.Int }
    (SM.add "rounds"
    { S.relevant_types = [Player]; S.att_name = "rounds"; S.att_t = S.Int }
    (SM.add "strategy"
    { S.relevant_types = [Player]; S.att_name = "strategy";
      S.att_t = S.Strategy(None, None, 0)}
    (SM.add "delta"
    { S.relevant_types = [Player]; S.att_name = "size"; S.att_t = S.Float }
    (SM.add "payoff"
    { S.relevant_types = [Player]; S.att_name = "payoff"; S.att_t = S.Float }
    (SM.singleton "reset"
    { S.relevant_types = [Player]; S.att_name = "reset"; S.att_t = S.Player }
    ))))))))))
  in

  (* Return the string attribute of e' if its type allows it *)
  let string_attribute s e' = function
      S.String -> e'
    | t -> check_has_string s t;
        (S.Att(e', SM.find "string" built_in_attrs))
  in

  (* Ensure move list in each transition represents the same number of players.
   * Return the number of players. *)
  let rec transitions l = (function
      (ml,_)::tl -> check_nplayers_equal (List.length l) ml; transitions ml tl
    | [] -> List.length l)
  in

  (* Return true if lists are identical, false otherwise. Code borrowed from
   * http://stackoverflow.com/questions/3997895/comparing-list-of-floats *)
  let rec compare_types l1 l2 = match l1, l2 with
      [], []       -> true
    | [], _        -> false
    | _, []        -> false
    | t1::tl1, t2::tl2 -> t1 = t2 && compare_types tl1 tl2
  in

  (* Type check expr, return S.expr *)
  let rec expr env = function
      IntLit(i) -> (S.IntLit(i), S.Int)
    | BoolLit(b) -> (S.BoolLit(b), S.Bool)
    | FloatLit(f) -> (S.FloatLit(f), S.Float)
    | StringLit(str) -> (S.StringLit(str), S.String)

      (* Game constructor *)
    | Object(Game, [e; Payoffs(ol)]) ->
        let (e', t) = expr env e
        and ol' = List.map (fun (ml,el) ->
          (ml, List.map fst (List.map (expr env) el))) ol
        and nplayers = (match ol with
            [] -> 0
          | hd::_ -> List.length (fst hd))
        in

        (* Ensure each number of players corresponds to number of outcomes. *)
        List.iter (check_nplayers_equal nplayers) (List.map fst ol');
        List.iter (check_nplayers_equal nplayers) (List.map snd ol');

        (* For each type in the payoff list, check that it's a float or int *)
        let check_payoffs pl =
          List.iter (check_float_or_int "payoff list")
          (List.map snd (List.map (expr env) pl))
        in
        (List.iter check_payoffs (List.map snd ol));

        (* Ensure specified number of moves is an integer.
         * Record this information if possible. *)
        (match (e', t) with
            (S.IntLit(i), S.Int) -> (S.GameLit(e', ol'),
              S.Game(Some(i), nplayers))
          | (_, S.Int)         -> (S.GameLit(e', ol'),
              S.Game(None, nplayers))
          | _                  -> raise
            (TypeError(Int, typ_of_t t, "Game constructor")))

      (* Strategy constructor *)
    | Object(Strategy, [e1; e2; States(sl)]) ->
        (* Check that each state's output is of type int, and that each
         * transition represents the correct number of players. *)
        let rec states n = (function
            (_,e,trans)::tl -> let (_,t) = expr env e in
              (match t with
                  S.Int -> ()
                | _ -> raise
                    (TypeError(Int, typ_of_t t,"Strategy constructor"))
              );
              (match trans with
                  [] -> 0
                | hd::_  -> let ml = fst hd in
                  let nplayers = transitions ml trans in
                  if nplayers = n then states nplayers tl
                  else raise (IllegalOutcomeError(n))
              )
          | _ -> n)
        in

        (* First argument of states function: # of moves in first transition
         * of first state. *)
        let n =
          (match sl with
              [] -> 0
            (* Get first state *)
            | shd::_  -> let ts = (fun (_, _, ts) -> ts) shd in
                (match ts with
                    [] -> 0
                  (* Get number of moves in first transition *)
                  | thd::_ -> List.length (fst thd)
                )
          )
        in

        (* Call states function *)
        let nplayers = states n sl
        and sl' = List.map (fun (s,e,trans) -> (s, fst (expr env e), trans)) sl
        and (e1', t1) = expr env e1
        and (e2', t2) = expr env e2
        in

        let nstates = match (e1', t1) with
            (S.IntLit(i), S.Int) -> Some(i)
          | (_, S.Int) -> None
          | _ -> raise (TypeError(Int, typ_of_t t1, "Strategy constructor"))
        in

        let nmoves = match (e2', t2) with
            (S.IntLit(i), S.Int) -> Some(i)
          | (_, S.Int) -> None
          | _ -> raise (TypeError(Int, typ_of_t t2, "Strategy constructor"))
        in

      (S.StrategyLit(e1', e2', sl'), S.Strategy(nstates, nmoves, nplayers))

      (* Player constructor *)
    | Object(Player, e::el) when typ_of_t (snd (expr env e)) = Strategy ->
        let (e',_) = expr env e
        and s = "Player constructor"
        in

        (match el with
          | [e1] ->
              let (e1', t1) = expr env e1 in check_float_or_int s t1;
              (S.PlayerLit(e', e1'), S.Player)

          | [] ->
              (S.PlayerLit(e', S.FloatLit 1.0),
                S.Player)
          | _ -> raise (IllegalObjectError(Player)))

    (* Array constructor *)
    | Object(typ,[e]) ->
        (match typ with
            (* replay doesn't allow arrays of arrays *)
            Array(_) -> raise (IllegalObjectError(typ))
          | _ ->
            let (e',t) = expr env e in
            (match (e',t) with
                (S.IntLit(i), S.Int) -> (S.ArrayLit(typ, e'),
                  S.Array(typ, Some(i)))
              | (_, S.Int) -> (S.ArrayLit(typ, e'), S.Array(typ, None))
              | _ -> raise (TypeError(Int, typ_of_t t, "array constructor"))
            )
        )

    (* Unrecognized constructor format *)
    | Object(t,_) -> raise (IllegalObjectError(t))
    | Binop(e1, op, e2) ->
        let (e1',t1) = expr env e1
        and (e2',t2) = expr env e2
        in

        if op = Div || op = Mul || op = Add || op = Sub then
          (check_float_or_int "left arithmetic operand" t1;
          check_float_or_int "right arithmetic operand" t2;
          if t1 = S.Int && t2 = S.Int then (S.Binop(e1', op, e2'), S.Int)
          else (S.Binop(e1', op, e2'), S.Float))

        else if op = Eq || op = Ne then
          (let typ1 = typ_of_t t1 in
            (match typ1 with
                Int -> check_float_or_int "right equality operand" t2;
              | Float -> check_float_or_int "right equality operand" t2;
              | Bool -> check_same_type "right equality operand" typ1
                  (typ_of_t t2);
          (* Void is used as a placeholder in TypeError to indicate that the
           * second argument is unexpected *)
            |  _ -> raise (TypeError(Void, typ1, "left equality operand")));
          (S.Binop(e1', op, e2'), S.Bool))

        else if op = Gt || op = Ge || op = Le || op = Lt then
          (check_float_or_int "left comparison operand" t1;
          check_float_or_int "right comparison operand" t2;
          (S.Binop(e1', op, e2'), S.Bool))

        else if op = And || op = Or then
          (check_same_type "left boolean operand" Bool (typ_of_t t1);
          check_same_type "right boolean operand" Bool (typ_of_t t2);
          (S.Binop(e1', op, e2'), S.Bool))

        else if op = Cat then
          (let s1 = string_attribute "left concatenation operand" e1' t1 in
          let s2 = string_attribute "right concatenation operand" e2' t2 in
          (S.Binop(s1, op, s2), S.String))
        else (* Not reached *) raise (TypeError(Void,Void,"No!"))

    | Unop(uop, e) ->
        let (e', t) = expr env e in
        if uop = Neg then
          (check_float_or_int "unary negation operand" t;
          (S.Unop(uop, e'), t))
        else if uop = Not then
          (check_same_type "unary not operand" Bool (typ_of_t t);
          (S.Unop(uop, e'), S.Bool))
        else (* Not reached *) raise (TypeError(Void,Void,"No!"))

    | Id(s) ->
        (try let (typ, s, e) = (S.find_variable env s)
          in
          let (e', t') = expr env e
          in (S.Id(typ, s, e'), t')
        with Not_found ->
          let (e, t) =
            (fun (_,i) -> (IntLit i, S.Int)) (S.find_constant env s)
          in (S.Id(Int, s, fst (expr env e)), t)
        )

    | Entry(s, e) ->
        let (e1', t1) = expr env e
        and (e2', t2) = expr env (Id s)
        in

        check_same_type "array index" Int (typ_of_t t1);
        (match t2 with
            S.Array(typ,_) -> (S.Entry(((typ_of_t t2), s, e2'), e1'),
              (t_of_typ typ))
          | _ -> raise (TypeError(Array(Int), typ_of_t t2,"array entry"))
        )

    | Att(e, s) ->
        let (e', t) = expr env e
        and att = SM.find s built_in_attrs
        in

        (* Find attribute s for type t. *)
        (match t with
            S.Array(_) -> if att.S.att_name = "len" then
                (S.Att(e', { S.relevant_types = [Array(Int)];
                  S.att_name = "len"; S.att_t = S.Int }), att.S.att_t)
              else raise (WrongAttrError(s, (typ_of_t t)))

          | _ -> try ignore
              (List.find (fun a -> a = (typ_of_t t)) att.S.relevant_types);
              (S.Att(e', att), att.S.att_t)
            with Not_found -> raise (WrongAttrError(s, (typ_of_t t)))
        )

    | Call(s, el) ->
        let fd = S.find_function env s
        and el' = List.map (expr env) el
        in
        if compare_types
          (List.map (fun (typ,_) -> typ) fd.params)
          (List.map typ_of_t (List.map snd el'))
        then
          (S.Call(fd, List.map fst el'), t_of_typ fd.typ)

        else raise (ArgError(fd.name))

    | Range(e1, e2) ->
        let (e1', t1) = expr env e1
        and (e2', t2) = expr env e2
        in

        check_same_type "left bound of range" Int (typ_of_t t1);
        check_same_type "right bound of range" Int (typ_of_t t2);
        (S.Range(e1', e2'), S.Array(Int, None))
      (* Create new scope for states, which defines state names *)
    | States(_) -> raise (BadPlacementError("States", "Strategy"))
    | Payoffs(_) -> raise (BadPlacementError("Payoffs", "Game"))
    | Rand -> (S.Rand, S.Float)
    | Noexpr -> (S.Noexpr, S.Void)
  in

  (* Type check statement, return S.stmt *)
  let rec stmt env (*statement =
  print_endline (string_of_stmt "" statement);
  match statement with*) = function
      Block(sl) -> let env' = { S.parent = Some(env); S.constants = [];
          S.variables = []; S.functions = []; S.state_labels = [];
          S.return_type = env.S.return_type; S.has_return = false } in
        let sl = List.map (fun s -> stmt env' s) sl in S.Block(env', sl)

    (* Initiate variable to a default value *)
    | Vdecl(t,s,Noexpr) ->
        let e = get_init_expr t in
        env.S.variables <- (t,s,e)::env.S.variables;
        let e' = expr env e in
        S.Vdecl(t,s,fst e')

    | Vdecl(t,s,e) ->
        let (e', t') = expr env e in
        check_same_type ("variable declaration of " ^ s) t (typ_of_t t');
        env.S.variables <- (t,s,e)::env.S.variables;
        S.Vdecl(t,s,e')

    | Sdecl(sl) -> List.iter (fun (s,i) ->
        env.S.constants <- (s,i)::env.S.constants) sl;
        S.Sdecl(sl)
    | Cross(e1, e2, e3) ->
        let (e1', t1) = expr env e1
        and (e2', t2) = expr env e2
        and (e3', t3) = expr env e3
        in

        check_same_type "left cross operand" Player (typ_of_t t1);
        check_same_type "middle cross operand" Float (typ_of_t t2);
        check_same_type "right cross operand" Player (typ_of_t t3);
        S.Cross((e1', t1), (e2', t2), (e3', t3))

    | Asn(e1, e2) ->
        let (e1', t1) = expr env e1 in
        let (e2', t2) = expr env e2 in

        (* Ensure that assignment is to a legal expression *)
        (match e1' with
            S.Id(_)    -> ()
          | S.Entry(_) -> ()
          | _ -> raise (IllegalAssignmentError((typ_of_t) t1))
        );
        check_same_type "variable assignment" (typ_of_t t1) (typ_of_t t2);
        S.Asn((e1', t1), (e2', t2))

    | Play(el, e) ->
        let el' = List.map (expr env) el
        and (e', t) = expr env e
        in

        List.iter (check_same_type "play operand" Player)
          (List.map typ_of_t (List.map snd el'));
        check_same_type "play operand" Game (typ_of_t t);
        S.Play(el', (e', t))

    | Mut(e1, e2) ->
        let (e1', t1) = expr env e1
        and (e2', t2) = expr env e2
        in

        check_same_type "left mutation operand" Player (typ_of_t t1);
        check_same_type "right mutation operand" Float (typ_of_t t2);
        S.Mut((e1', t1), (e2', t2))

    | If(e, s1, s2) ->
        let (e', t) = expr env e
        and s1' = stmt env s1
        and s2' = stmt env s2
        in

        check_same_type "if condition" Bool (typ_of_t t);
        S.If((e', t), s1', s2')

    | While(e, s) ->
        let (e', t) = expr env e
        and s' = stmt env s
        in

        check_same_type "while condition" Bool (typ_of_t t);
        S.While((e', t), s')

    | For(str, e, s) ->
        let (e', t) = expr env e in

        let typ = get_array_type "for loop array" (typ_of_t t) in

        let env' = { S.parent = Some(env); S.constants = []; S.variables = [];
          S.functions = []; S.state_labels = [];
          S.return_type = env.S.return_type; S.has_return = false }
        in env'.S.variables <- (typ, str, get_init_expr typ)::env'.S.variables;

        S.For(str, (e', t), stmt env' s)

    | SideCall("print", [e]) ->
        let (e',t) = (expr env e)
        and s = "call of print"
        in

        (match t with
            S.String -> S.SideCall(S.find_function env "print", [e'])
          | _ -> check_has_string s t;
            S.SideCall(S.find_function env "print", [(string_attribute s e' t)])
        )

    | SideCall("println", [e]) ->
        let (e',t) = (expr env e)
        and s = "call of println"
        in

        (match t with
            S.String -> S.SideCall(S.find_function env "println", [e'])
          | _ -> check_has_string s t;
            S.SideCall(S.find_function env "println",
              [(string_attribute s e' t)])
        )

    | SideCall(s, el) ->
        let fd = S.find_function env s
        and el' = List.map (expr env) el
        in

        if compare_types
          (List.map (fun (typ,_) -> typ) fd.params)
          (List.map typ_of_t (List.map snd el'))
        then
          (S.SideCall(fd, List.map fst el'))

        else raise (ArgError(fd.name))

    | Return(e) ->
        let (e', t) = expr env e in
        env.S.has_return <- true;
        check_same_type "return statement" env.S.return_type (typ_of_t t);
        S.Return((e', t))
  in

  (* Type check function, constant, and variable declarations, convert to
   * S.fdecl or S.vdecl.
   * Return updated list of functions and globals.
   *
   * Note: statements will be checked when the main fdecl is checked, no need
   * to check them twice. *)
  let content env (fl, gl) = function

      (* Create a new environment containing the return type *)
      Fdecl(f) -> let env' = { S.parent = Some(env); S.constants = [];
        (* Add f's parameters to scope *)
        S.variables = List.map (fun (typ, s) -> (typ, s, get_init_expr typ))
        f.params; S.functions = []; S.state_labels = [];
        S.return_type = f.typ; S.has_return = false } in
          (* Create a function to add to the list of functions *)
          (* Swap use of "main" as name of function for "", and vice versa *)
          ( {S.typ = f.typ; S.name = (match f.name with "" -> "main"
              | "main" -> "" | s -> s);
            (* Check the function body *)
            S.params = f.params; S.body = match (stmt env') (Block f.body) with
                S.Block(env'', sl) -> (env'', sl)
              | _ -> (* Not reachable *) print_endline "No!"; (env, [])
            }::fl, gl)
    | Stmt(Vdecl(v)) -> let v' = (fun (typ,s,_) -> (typ,s, expr env
        (get_init_expr typ))) v in (fl, v'::gl)
    | Stmt(Sdecl(cl)) -> (fl, (List.map (fun (s,i) -> (Int,s,
        (S.IntLit i,S.Int))) cl) @ gl)
    | _ -> (fl, gl)
  in

  (* Helpers for build_main *)
  (* Raise an exception if the given scope has a duplicate local *)
  let check_scope env = report_duplicate ((List.map fst env.S.constants) @
    (List.map (fun (_,s,_) -> s) env.S.variables));
    report_duplicate (List.map (fun fd -> fd.name) env.S.functions);
    report_duplicate (List.map (fun (s,_) -> s) env.S.state_labels)
  in

  (* Raise exception if environment already contains a return statement *)
  let check_no_return env s =
    if env.S.has_return then raise (IllegalReturnError(s)) else ()
  in

  (* Raise exception if environment doesn't contain a return statement *)
  let check_has_return env s =
    if env.S.has_return then () else raise (MissingReturnError(s))
  in


  (* Raise exception if move doesn't refer to a previously defined constant.
   * Perform any semantic checks that don't require knowledge of types.
   * Return unit. *)
  let check_move env = function
      Move(s) -> (try ignore (S.find_constant env s)
        with Not_found -> raise (MissingSdeclError(s)))
    | Wild -> ()
  in

  (* Raise exception if transition doesn't refer to a state
   * Perform any semantic checks that don't require knowledge of types.
   * Return unit. *)
  let check_transition env' (ml, name) =
    (* A move can't refer to a state name, so perform look-up only in parent *)
    (match env'.S.parent with
        Some(env) ->
          (try List.iter (check_move env) ml
          with Not_found -> raise (MissingSdeclError("")))
      | _ -> ());
    try ignore (List.find (fun (s,_) -> s = name) env'.S.state_labels)
    with Not_found -> raise (MissingStateError(name))
  in

  (* Raise exception if expr refers to an out of scope variable or function.
   * Perform any semantic checks that don't require knowledge of types.
   * Return unit. *)
  let rec check_expr env = function
      Object(_,el) -> List.iter (check_expr env) el
    | Binop(e1,_, e2) -> check_expr env e1; check_expr env e2
    | Unop(_, e) -> check_expr env e
    | Id(s) -> (try ignore (S.find_variable env s)
        with Not_found -> try ignore(S.find_constant env s)
        with Not_found -> raise (MissingVdeclError(s)))
    | Entry(s, e) -> check_expr env e; (try ignore (S.find_variable env s)
        with Not_found -> raise (MissingVdeclError(s)))
    | Att(e, s) -> check_expr env e;
        (try ignore (SM.find s built_in_attrs)
        with Not_found -> raise (MissingAttrError(s)))
    | Call(s, el) -> (try ignore (S.find_function env s)
        with Not_found -> raise (MissingFdeclError(s)));
        List.iter (check_expr env) el
    | Range(e1, e2) -> check_expr env e1; check_expr env e2
      (* Create new scope for states, which defines state labels *)
    | States(states) -> let env' = { S.parent = Some(env); S.constants = [];
        S.variables = []; S.functions = []; S.state_labels = [];
        S.return_type = env.S.return_type; S.has_return = false } in
        let rec helper i = (function
            (s,e,_)::t -> check_expr env e; env'.S.state_labels <-
              (s, i)::env'.S.state_labels; (helper (i + 1) t)
          | [] -> ())
        in (helper 0 states); check_scope env';
        List.iter (fun (_,_,tl) -> List.iter (check_transition env') tl)
          states
    | Payoffs(ol) -> List.iter (fun (ml,el) -> List.iter (check_move env) ml;
        List.iter (check_expr env) el) ol
    | _ -> ()
  in


  (* Raise exception if stmt refers to an out of scope variable or function,
   * or declares a duplicate variable or function.
   * Perform any semantic checks that don't require knowledge of type.
   * Return unit. *)
  let rec check_stmt env = function
      Block(sl) -> let env' = { S.parent = Some(env); S.constants = [];
          S.variables = []; S.functions = []; S.state_labels = [];
          S.return_type = env.S.return_type; S.has_return = false } in
          (* Ensure no statement except last is a return *)
          List.iter (fun s -> check_no_return env' "block"; check_stmt env' s)
            sl; check_scope env'
    | Vdecl(t,s,e) -> check_expr env e;
        env.S.variables <- (t,s,e)::env.S.variables
    | Sdecl(sl) -> List.iter (fun (s,i) ->
        env.S.constants <- (s,i)::env.S.constants) sl
    | Cross(e1, e2, e3) -> check_expr env e1; check_expr env e2;
        check_expr env e3
    | Asn(e1, e2) -> check_expr env e1; check_expr env e2
    | Play(el, e) -> check_expr env e;
        List.iter (check_expr env) el;
    | Mut(e1, e2) -> check_expr env e1; check_expr env e2
    | If(e, s1, s2) -> check_expr env e; check_stmt env s1;
        check_stmt env s2
    | While(e, s) -> check_expr env e; check_stmt env s
    | For(str, e, stmt) -> check_expr env e; let env' = { S.parent =
          Some(env); S.constants = []; S.variables = []; S.functions = [];
          S.state_labels = []; S.return_type = env.S.return_type;
          S.has_return = env.S.has_return }
        in env'.S.variables <- (Int, str, Noexpr)::env'.S.variables;
        check_stmt env' stmt
    | SideCall(s, el) -> (try ignore (S.find_function env s)
        with Not_found -> raise (MissingFdeclError(s)));
        List.iter (check_expr env) el
    | Return(e) -> env.S.has_return <- true; check_expr env e
  in

  (* Raise exception if function refers to an out of scope variable or function.
   * Perform any semantic checks that don't require knowledge of types.
   * Return unit *)
  let check_fdecl env f =
    let env' = {
        S.parent = Some(env); S.constants = []; S.variables = [];
        S.functions = []; S.state_labels = []; S.return_type = Void;
        S.has_return = false
      } in
    List.iter (fun (t,s) -> env'.S.variables <- (t, s, Noexpr) ::
      env'.S.variables; check_not_void (t, s, Noexpr)) f.params;
    report_duplicate (List.map snd f.params);
    (* Function declarations reach all function bodies; add all function names
     * to scope. *)
    List.iter (function Fdecl(f) -> env'.S.functions <- f::env'.S.functions
      | _ -> ()) contents;
    (* Ensure last statement is a return *)
    List.iter (fun s -> check_no_return env' f.name; check_stmt env' s) f.body;
    if f.typ = Void then (check_no_return env' f.name;) else
      (check_has_return env' f.name);
    (* Finally, check that the scope contains no duplicates *)
    check_scope env'
  in

  let main = { typ = Int; name = ""; params = []; body =
  (* Build main function body  and update the built-in environment while
   * applying the following top-level scoping rules:
   * 1. Function declarations only reach following statements.
   * 2. Function declarations reach all function bodies.
   * 3. Variable and strategy declarations reach all following statements and
   *    function declarations.
   *
   * Perform any semantic checks that don't require knowledge of types.
   *
   * Return stmt list.
   *
   * Note: It's impossible to declare a function named "", so "" is used as a
   * placeholder for the main function's name. *)
      let rec build_main env = function
          Fdecl(f)::tl -> env.S.functions <- f::env.S.functions;
            check_fdecl env f; build_main env tl
        | Stmt(Vdecl(t,s,Noexpr))::tl ->
            let e = get_init_expr t in
            env.S.variables <- (t,s,e)::env.S.variables;
            Asn(Id s, e) :: build_main env tl
        | Stmt(Vdecl(t,s,e))::tl ->
            env.S.variables <- (t,s,e)::env.S.variables;
            check_expr env e; Asn(Id s,e) :: build_main env tl
        | Stmt(Sdecl(cl))::tl -> env.S.constants <- cl @ env.S.constants;
            (List.map (fun (s,i) -> Asn(Id s, IntLit i)) cl) @ build_main env tl
        | Stmt(Return(_))::_ -> raise (IllegalReturnError("main method"))
        | Stmt(s)::tl -> ignore (check_stmt env s); s::(build_main env tl)
        | [] -> []
      in List.rev ((Return (IntLit 0))::
        (List.rev ((build_main built_in_env) contents)))
    }
  in

(* Return semantically checked functions and globals *)
check_scope built_in_env;
List.fold_left (content built_in_env) ([],[]) ((Fdecl main)::contents)
