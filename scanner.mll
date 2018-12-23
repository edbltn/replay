(* File: scanner.mll
 * Created: 10/24/2016
 *
 * COMSW4115 Fall 2016 (CVN)
 * replay
 * Eric D. Bolton <edb2129@columbia.edu> *)

{
open Parser
open Lexing
open Printer
}

let digit = ['0'-'9']
let letter = ['a'-'z' 'A'-'Z']
let num = digit+
let tail = letter | digit | ['_']
let identifier = letter tail*
let exp = ['e']['-' '+']? num
let floatnum = num ['.'] num? exp? | ['.'] num exp? | num exp
let newline = '\r' | '\n' | "\r\n"

rule token =
  parse
      [' ' '\t']              { token lexbuf }    (* Whitespace *)
    | newline                 { new_line lexbuf; token lexbuf }
    | "/*"                    { comment lexbuf }  (* Comments *)

    (* Keywords *)
    | "if"                    { IF }
    | "else"                  { ELSE }
    | "while"                 { WHILE }
    | "for"                   { FOR }
    | "in"                    { IN }
    | "return"                { RETURN }
    | "true"                  { TRUE }
    | "false"                 { FALSE }
    | "strat"                 { STRAT }
    | "rand"                  { RAND }

    (* Types *)
    | "int"                   { INT }
    | "bool"                  { BOOL }
    | "float"                 { FLOAT }
    | "void"                  { VOID }
    | "String"                { STRING }
    | "Game"                  { GAME }
    | "Strategy"              { STRATEGY }
    | "Player"                { PLAYER }

    (* Variables and literals *)
    | '_'                     { WILD }
    | '"'                     { stringlit (Buffer.create 16) lexbuf }
    | num as lit              { INTLIT(int_of_string lit) }
    | floatnum as lit         { FLOATLIT(float_of_string lit) }
    | identifier as id        { ID(id) }

    (* Operators *)
    | '+'                     { PLUS }
    | '-'                     { MINUS }
    | '*'                     { TIMES }
    | '/'                     { DIVIDE }
    | '='                     { ASSIGN }
    | "->"                    { ARROW }
    | "=="                    { EQ }
    | "!="                    { NE }
    | ">"                     { GT }
    | "<"                     { LT }
    | ">="                    { GE }
    | "<="                    { LE }
    | "&&"                    { AND }
    | "||"                    { OR }
    | "!"                     { NOT }
    | "^"                     { CAT }
    | "%"                     { PLAY }
    | "#"                     { CROSS }
    | "~"                     { MUTATE }

    (* Punctuation *)
    | '('                     { LPAREN }
    | ')'                     { RPAREN }
    | '['                     { LBRACK }
    | ']'                     { RBRACK }
    | '{'                     { LBRACE }
    | '}'                     { RBRACE }
    | ':'                     { COLON }
    | ';'                     { SEMI }
    | '.'                     { DOT }
    | ','                     { COMMA }
    | '|'                     { BAR }

    | eof                     { EOF }
    | _                       { raise IllegalCharError }

and comment =
  parse "*/"  { token lexbuf }
    | _       { comment lexbuf }

(* String parsing borrowed from:
https://github.com/realworldocaml/examples/blob/master/code/parsing/lexer.mll *)

and stringlit buf =
  parse
  | '"'       { STRINGLIT(Buffer.contents buf) }
  | '\\' '/'  { Buffer.add_char buf '/'; stringlit buf lexbuf }
  | '\\' '\\' { Buffer.add_char buf '\\'; stringlit buf lexbuf }
  | '\\' 'b'  { Buffer.add_char buf '\b'; stringlit buf lexbuf }
  | '\\' 'f'  { Buffer.add_char buf '\012'; stringlit buf lexbuf }
  | '\\' 'n'  { Buffer.add_char buf '\n'; stringlit buf lexbuf }
  | '\\' 'r'  { Buffer.add_char buf '\r'; stringlit buf lexbuf }
  | '\\' 't'  { Buffer.add_char buf '\t'; stringlit buf lexbuf }
  | [^ '"' '\\']+
    { Buffer.add_string buf (Lexing.lexeme lexbuf);
      stringlit buf lexbuf }
  | _   { raise IllegalCharError }
  | eof { raise StringUntermError }
