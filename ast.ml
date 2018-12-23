(* File: ast.ml
 * Created: 10/24/2016
 *
 * COMSW4115 Fall 2016 (CVN)
 * replay
 * Eric D. Bolton <edb2129@columbia.edu> *)

type op = Add | Sub | Mul | Div | Eq | Ne | Gt | Ge | Lt | Le | And | Or | Cat
type uop = Neg | Not
type typ = Int | Bool | Float | String | Void | Game | Strategy | Player
  | Array of typ

type move =
    Move of string
  | Wild

type transition = move list * string

type expr =
    Object of typ * expr list
  | Binop of expr * op * expr
  | Unop of uop * expr
  | IntLit of int
  | BoolLit of bool
  | FloatLit of float
  | StringLit of string
  | Id of string
  | Entry of string * expr
  | Att of expr * string
  | Call of string * expr list
  | Range of expr * expr
  | States of (string * expr * transition list) list
  | Payoffs of (move list * expr list) list
  | Rand
  | Noexpr

type vdecl = typ * string * expr

type sdecl = string * int

type stmt = Block of stmt list
  | Vdecl of vdecl
  | Sdecl of sdecl list
  | Cross of expr * expr * expr
  | Asn of expr * expr
  | Play of expr list * expr
  | Mut of expr * expr
  | If of expr * stmt * stmt
  | While of expr * stmt
  | For of string * expr * stmt
  | SideCall of string * expr list
  | Return of expr

type fdecl = {
  mutable typ     : typ;
  mutable name    : string;
  mutable params  : (typ * string) list;
  mutable body    : stmt list;
}

type content = Stmt of stmt
  | Fdecl of fdecl

type program = content list
