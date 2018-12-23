(* File: printer.ml
 * Created: 11/16/2016
 *
 * COMSW4115 Fall 2016 (CVN)
 * replay
 * Eric D. Bolton <edb2129@columbia.edu> *)

open Ast

module S = Sast

(* Exceptions *)
exception ErrInfo of exn * int * int * string
exception IllegalCharError
exception StringUntermError
exception IllegalReturnError of string
exception IllegalObjectError of typ
exception IllegalOutcomeError of int
exception IllegalAssignmentError of typ
exception MissingAttrError of string
exception MissingVdeclError of string
exception MissingSdeclError of string
exception MissingFdeclError of string
exception MissingStateError of string
exception MissingReturnError of string
exception ArgError of string
exception BadPlacementError of string * string
exception WrongAttrError of string * typ
exception DupError of string
exception VoidError of string
exception TypeError of typ * typ * string

(* AST Pretty Printer *)
let string_of_op = function
    Add -> "+"
  | Sub -> "-"
  | Mul -> "*"
  | Div -> "/"
  | Eq  -> "=="
  | Ne  -> "!="
  | Gt  -> ">"
  | Ge  -> ">="
  | Lt  -> "<"
  | Le  -> "<="
  | And -> "&&"
  | Or  -> "||"
  | Cat -> "^"

let string_of_uop = function
    Neg -> "-"
  | Not -> "!"

let rec string_of_typ = function
    Int        -> "int"
  | Bool       -> "bool"
  | Float      -> "float"
  | Void       -> "void"
  | String     -> "String"
  | Game       -> "Game"
  | Strategy   -> "Strategy"
  | Player     -> "Player"
  | Array(typ) -> string_of_typ typ ^ "[]"

let string_of_move = function
    Move(str) -> str
  | Wild -> "_"

let string_of_transition = function (mvs, str) ->
  "(" ^ String.concat "," (List.map string_of_move mvs)  ^ ") ->" ^ str

let rec string_of_expr tab = function
    Object(typ, exprs) -> string_of_typ typ ^ "[Object " ^
      String.concat " | " (List.map (string_of_expr tab) exprs) ^ "]"
  | Binop(e1, op, e2) -> string_of_expr tab e1 ^ " " ^ string_of_op op ^ " " ^
      string_of_expr tab e2
  | Unop(uop, e) -> string_of_uop uop ^ string_of_expr tab e
  | IntLit(i) -> string_of_int i
  | BoolLit(b) -> if b then "true" else "false"
  | FloatLit(f) -> string_of_float f
  | StringLit(str) -> "\"" ^ str ^ "\""
  | Id(str) -> str
  | Entry(str, e) -> str ^ "[Array Value " ^ string_of_expr tab e ^ "]"
  | Att(e, str) -> "(Att " ^ string_of_expr tab e ^ "." ^ str ^ ")"
  | Call(s, exprs) -> "(Call " ^ s ^ "(" ^
      String.concat ", " (List.map (string_of_expr tab) exprs) ^ "))"
  | Range(e1, e2) -> "[Range " ^ string_of_expr tab e1 ^ " : " ^
      string_of_expr tab e2 ^ "]"
  | States(states) -> let string_of_state tab = function (s, m, trans) ->
    tab ^ s ^ ": " ^ string_of_expr tab m ^ ", " ^ String.concat
      ("\n" ^ tab ^ "   | ") (List.map string_of_transition trans) ^ ";" in
      "{States\n" ^ String.concat "\n"
      (List.map (string_of_state (tab ^ "   ")) states) ^ "\n" ^ tab ^
      "States end}"
  | Payoffs(outcomes) -> let string_of_outcome = function (mvs, exprs) ->
      "(" ^ String.concat "," (List.map string_of_move mvs) ^ ") ->" ^ "(" ^
      String.concat "," (List.map (string_of_expr tab) exprs) ^ ")" in
      "{Payoffs " ^ String.concat ("\n" ^ tab ^ "   | ")
      (List.map string_of_outcome outcomes) ^ tab ^ "\n" ^ "Payoffs end}"
  | Rand -> "Rand"
  | Noexpr -> "Noexpr"

let string_of_vdecl tab = function (typ, str, expr) -> string_of_typ
    typ ^ " " ^ str ^ " = " ^ string_of_expr tab expr

let string_of_sdecl = function (s,i) -> s ^ ": " ^ string_of_int i

let rec string_of_stmt tab = function
    Block(stmts) -> tab ^ "{Block\n" ^ String.concat "\n"
      (List.map (string_of_stmt (tab ^ "   ")) stmts) ^ "\n" ^ tab ^
      "Block end}\n"
  | Vdecl(vdecl) -> tab ^ "(Vdecl " ^ (string_of_vdecl tab) vdecl ^ ";)"
  | Sdecl(sdecl) -> tab ^ "(Sdecl strat {" ^
      String.concat ", " (List.map string_of_sdecl sdecl) ^ "};)"
  | Cross(e1, e2, e3) -> tab ^ "(Cross " ^ string_of_expr tab e1 ^ "#" ^
      string_of_expr tab e2 ^ "#" ^ string_of_expr tab e3 ^ ";)"
  | Asn(e1, e2) -> tab ^ "(Assignment " ^ string_of_expr tab e1 ^ " = " ^
      string_of_expr tab e2 ^ ";)"
  | Play(exprs, e) -> tab ^ "(Play " ^ String.concat ", " (List.map
      (string_of_expr tab) exprs) ^ " % " ^ string_of_expr tab e ^ ";)"
  | Mut(e1, e2) -> tab ^ "(Mutate " ^ string_of_expr tab e1 ^ " ~ " ^
      string_of_expr tab e2 ^ ";)"
  | If(expr, s1, s2) -> tab ^ "(If (" ^ string_of_expr tab expr ^
      ") Then\n" ^ string_of_stmt tab s1 ^ tab ^ "Else\n" ^
      string_of_stmt tab s2 ^ tab ^ "If end)"
  | While(expr, s) -> tab ^ "(While (" ^ string_of_expr tab expr ^
      ")\n" ^ string_of_stmt tab s ^ "\n" ^ tab ^ "While end)"
  | For(str, expr, stmt) -> tab ^ "(For " ^ str ^ " In " ^ (string_of_expr tab)
      expr ^ " Do\n" ^ (string_of_stmt (tab ^ "   ")) stmt ^ tab ^ "For end)"
  | SideCall(s, exprs) -> tab ^ "(SideCall " ^ s ^ "(" ^
      String.concat ", " (List.map (string_of_expr tab) exprs) ^ "); )"
  | Return(e) -> tab ^ "(Return " ^ (string_of_expr tab) e ^ "; )"

let rec string_of_sast_stmt = function
    S.Block(_,sl)    -> String.concat "\n" (List.map string_of_sast_stmt sl)
  | S.Vdecl(typ,str,_) -> (string_of_typ typ) ^ str ^ " = _"
  | S.Sdecl(sl) -> String.concat ", " (List.map string_of_sdecl sl)
  | S.Cross(_) -> "_ # _ # _;"
  | S.Asn(_) -> "_ = _;"
  | S.Play(_) -> "_, _ % _;"
  | S.Mut(_) -> "_ ~ _"
  | S.If(_,s1, s2) -> "if (_)\n" ^ string_of_sast_stmt s1 ^ "\nelse\n" ^
      string_of_sast_stmt s2
  | S.While(_,s) -> "while (_)\n" ^ string_of_sast_stmt s
  | S.For(s,_,stmt) -> "for " ^ s ^ " in _\n" ^ string_of_sast_stmt stmt
  | S.SideCall(_) -> "_(_);"
  | S.Return(_) -> "return _;"

let string_of_param = function (typ, str) -> string_of_typ typ ^ " " ^ str

let string_of_fdecl = function fdecl -> "(Fdecl " ^
  string_of_typ fdecl.typ ^ " " ^ fdecl.name ^ "(" ^ String.concat ", "
  (List.map string_of_param fdecl.params) ^ ") {\n" ^ String.concat
  ("\n") (List.map (string_of_stmt "   ") fdecl.body) ^ "\n}" ^
  " Fdecl end)"

let string_of_content = function
    Stmt(stmt) -> string_of_stmt "" stmt
  | Fdecl(fdecl) -> string_of_fdecl fdecl

let string_of_program = function program -> "(Program\n" ^
  String.concat "\n\n" (List.map string_of_content program) ^ "\nProgram end)\n"

(* Error Printer *)
let string_of_error = function
    ErrInfo(Parsing.Parse_error, lnum, cnum, lex) -> "Parse error at line " ^
      string_of_int lnum ^ ", character " ^ string_of_int cnum ^ ":\n\"" ^ lex ^
      "\""
  | ErrInfo(StringUntermError,_,_,_) -> "Unterminated string."
  | ErrInfo(IllegalCharError, lnum, cnum,_) -> "Illegal character at line " ^
      string_of_int lnum ^ ", character " ^ string_of_int cnum ^ "."
  | ErrInfo(DupError(str),_,_,_) -> "Illegal duplicate " ^ str ^ "."
  | ErrInfo(VoidError(str),_,_,_) -> "Illegal void global " ^ str ^ "."
  | ErrInfo(MissingVdeclError(str),_,_,_) -> "Undeclared variable " ^ str ^ "."
  | ErrInfo(MissingFdeclError(str),_,_,_) -> "Undeclared function " ^ str ^ "."
  | ErrInfo(MissingSdeclError(str),_,_,_) -> "Undeclared move " ^ str ^ "."
  | ErrInfo(MissingAttrError(str),_,_,_) -> str ^ " is not an attribute."
  | ErrInfo(MissingStateError(str),_,_,_) -> str ^ " is not a state."
  | ErrInfo(IllegalObjectError(typ),_,_,_) ->
      "Illegal object constructor for type " ^ string_of_typ typ ^ "."
  | ErrInfo(MissingReturnError(str),_,_,_) -> "Missing return in " ^ str ^ "."
  | ErrInfo(IllegalReturnError(str),_,_,_) -> "Illegal return in " ^ str ^ "."
  | ErrInfo(TypeError(Void, t, s),_,_,_) -> "Type error: unexpected type " ^
      string_of_typ t ^ " in " ^ s ^ "."
  | ErrInfo(TypeError(t1, t2, s),_,_,_) -> "Type error: " ^ string_of_typ t2 ^
      ", when " ^ string_of_typ t1 ^ " was expected, in " ^ s ^ "."
  | ErrInfo(IllegalOutcomeError(i),_,_,_) -> "Incorrect number of players: " ^
      string_of_int i ^ " moves were expected."
  | ErrInfo(BadPlacementError(s1, s2),_,_,_) -> s1 ^ " should only appear in " ^
      s2 ^ " constructor."
  | ErrInfo(WrongAttrError(s,typ),_,_,_) -> "Attribute " ^ s ^
      " doesn't apply to " ^ string_of_typ typ ^ "."
  | ErrInfo(ArgError(s),_,_,_) -> "Incorrect arguments in call to " ^ s
  | ErrInfo(IllegalAssignmentError(typ),_,_,_) -> "Illegal assignment: " ^
      string_of_typ typ ^
      " expression must be either an identifier or an array entry."
  | _ -> "Error."

let print_error lexbuf e = let pos = lexbuf.Lexing.lex_curr_p in
  let lnum = pos.Lexing.pos_lnum in
  let cnum = pos.Lexing.pos_cnum - pos.Lexing.pos_bol in
  let lex = Lexing.lexeme lexbuf in
  prerr_endline (string_of_error (ErrInfo(e,lnum,cnum,lex)))
