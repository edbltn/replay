(* File: sast.ml
 * Created: 11/23/2016
 *
 * COMSW4115 Fall 2016 (CVN)
 * replay
 * Eric D. Bolton <edb2129@columbia.edu> *)

open Ast

(* Helpful type and functions for tracking scope *)
type symbol_table = {
  mutable parent        : symbol_table option;
  mutable constants     : sdecl list;
  mutable variables     : vdecl list;
  mutable functions     : fdecl list;
  mutable state_labels  : (string * int) list;
  mutable return_type   : typ;
  mutable has_return    : bool
}

let rec find_constant scope name =
  try
    List.find (fun (s,_) -> s = name) scope.constants
  with Not_found ->
    match scope.parent with
      Some(parent) -> find_constant parent name
    | _ -> raise Not_found

let rec find_function scope name =
  try
    List.find (fun f -> f.name = name) scope.functions
  with Not_found ->
    match scope.parent with
      Some(parent) -> find_function parent name
    | _ -> raise Not_found

let rec find_variable scope name =
  try
    List.find (fun (_,s,_) -> s = name) scope.variables
  with Not_found ->
    match scope.parent with
      Some(parent) -> find_variable parent name
    | _ -> raise Not_found

(* More informative types *)
type t = Int | Bool | Float | Void | String
  | Game of int option * int
  | Strategy of int option * int option * int
  | Player
  | Array of typ * int option

(* Useful details for attributes *)
type att_info = {
  relevant_types  : typ list;
  att_name        : string;
  att_t           : t
}

(* Expression details *)
type expr_detail =
    ArrayLit of typ * expr_detail
  | GameLit of expr_detail * (move list * expr_detail list) list
  | StrategyLit of expr_detail * expr_detail *
      (string * expr_detail * transition list) list
  | PlayerLit of expr_detail * expr_detail
  | Binop of expr_detail * op * expr_detail
  | Unop of uop * expr_detail
  | IntLit of int
  | BoolLit of bool
  | FloatLit of float
  | StringLit of string
  | Id of typ * string * expr_detail
  | Entry of (typ * string * expr_detail) * expr_detail
  | Att of expr_detail * att_info
  | Call of fdecl * expr_detail list
  | Range of expr_detail * expr_detail
  | Rand
  | Noexpr

(* Expression details and associated type *)
type expr = expr_detail * t

type stmt = Block of symbol_table * stmt list
  | Vdecl of typ * string * expr_detail
  | Sdecl of (string * int) list
  | Cross of expr * expr * expr
  | Asn of expr * expr
  | Play of expr list * expr
  | Mut of expr * expr
  | If of expr * stmt * stmt
  | While of expr * stmt
  | For of string * expr * stmt
  | SideCall of fdecl * expr_detail list
  | Return of expr

(* Updated fdecl *)
type fdecl = {
  typ     : typ;
  name    : string;
  params  : (typ * string) list;
  body    : symbol_table * stmt list
}

type program = symbol_table
