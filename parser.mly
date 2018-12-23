/* File: parser.mly
 * Created: 10/24/2016
 *
 * COMSW4115 Fall 2016 (CVN)
 * replay
 * Eric D. Bolton <edb2129@columbia.edu> */

%{ open Ast %}

%token LPAREN RPAREN LBRACK RBRACK LBRACE RBRACE COLON SEMI DOT COMMA BAR
%token PLUS MINUS TIMES DIVIDE ASSIGN ARROW EQ NE GT LT GE LE AND OR NOT CAT
%token PLAY CROSS MUTATE IF ELSE WHILE FOR IN RETURN TRUE FALSE STRAT RAND
%token INT BOOL FLOAT VOID STRING GAME STRATEGY PLAYER WILD EOF

%token <int> INTLIT
%token <float> FLOATLIT
%token <string> STRINGLIT
%token <string> ID

%nonassoc NOELSE
%nonassoc ELSE
%left CAT
%left OR
%left AND
%left EQ NE
%left GT GE LT LE
%left PLUS MINUS
%left TIMES DIVIDE
%right NOT NEG

%start program
%type <Ast.program> program

%%

program: contents EOF { List.rev $1 }

contents:
    /* nothing */   { [] }
  | contents fdecl  { Fdecl($2) :: $1 }
  | contents stmt   { Stmt($2) :: $1 }

fdecl:
  typ ID LPAREN formals_opt RPAREN LBRACE stmts RBRACE
  { { typ = $1; name = $2; params = $4; body = List.rev $7 } }

formals_opt:
    /* nothing */ { [] }
  | formals       { List.rev $1 }

formals:
    typ ID                { [($1, $2)] }
  | formals COMMA typ ID  { ($3, $4) :: $1 }

typ:  atom_typ              { $1 }
  | atom_typ LBRACK RBRACK  { Array($1) }

atom_typ:
    INT      { Int }
  | BOOL     { Bool }
  | FLOAT    { Float }
  | VOID     { Void }
  | STRING   { String }
  | GAME     { Game }
  | STRATEGY { Strategy }
  | PLAYER   { Player }

stmts:
   /* nothing */  { [] }
 | stmts stmt     { $2 :: $1 }

stmt:
    vdecl SEMI                                    { Vdecl($1) }
  | sdecl SEMI                                    { Sdecl($1) }
  | identifiers PLAY   expr SEMI                  { Play($1, $3) }
  | identifier  MUTATE expr SEMI                  { Mut($1, $3) }
  | identifier  CROSS  expr CROSS identifier SEMI { Cross($1, $3, $5) }
  | identifier  ASSIGN expr SEMI                  { Asn($1, $3) }
  | ID LPAREN actuals_opt RPAREN SEMI             { SideCall($1, $3) }
  | RETURN expr_opt SEMI                          { Return($2) }
  | IF LPAREN expr RPAREN stmt %prec NOELSE       { If($3, $5, Block([])) }
  | IF LPAREN expr RPAREN stmt ELSE stmt          { If($3, $5, $7) }
  | WHILE LPAREN expr RPAREN stmt                 { While($3, $5) }
  | FOR ID IN expr stmt                           { For($2, $4, $5) }
  | LBRACE stmts RBRACE                           { Block(List.rev $2) }

actuals_opt:
    /* nothing */ { [] }
  | actuals       { List.rev $1 }

actuals:
    expr                { [$1] }
  | actuals COMMA expr  { $3 :: $1 }

vdecl:
    typ ID ASSIGN expr  { ($1, $2, $4) }
  | typ ID              { ($1, $2, Noexpr) }

sdecl:
    STRAT LBRACE strats RBRACE { List.rev $3 }

strats:
    ID              { [($1,0)] }
  | strats COMMA ID /* Set move constants */
    { match $1 with (x, i)::tl -> ($3, i + 1)::(x, i)::tl | _ -> [($3, 0)] }

identifiers:
    identifier                    { [$1] }
  | identifiers COMMA identifier  { $3 :: $1 }

identifier:
    ID                                    { Id($1) }
  | ID LBRACK expr RBRACK                 { Entry($1, $3) }
  | identifier DOT ID                     { Att($1, $3) }
  | ID LPAREN actuals_opt RPAREN          { Call($1, $3) }

expr_opt:
    /* nothing */ { Noexpr }
  | expr          { $1 }

expr:
    atom_typ LBRACK params RBRACK { Object($1, List.rev $3) }
  | expr PLUS   expr              { Binop($1, Add, $3) }
  | expr MINUS  expr              { Binop($1, Sub, $3) }
  | expr TIMES  expr              { Binop($1, Mul, $3) }
  | expr DIVIDE expr              { Binop($1, Div, $3) }
  | expr EQ     expr              { Binop($1, Eq, $3) }
  | expr NE     expr              { Binop($1, Ne, $3) }
  | expr GT     expr              { Binop($1, Gt, $3) }
  | expr GE     expr              { Binop($1, Ge, $3) }
  | expr LT     expr              { Binop($1, Lt, $3) }
  | expr LE     expr              { Binop($1, Le, $3) }
  | expr AND    expr              { Binop($1, And, $3) }
  | expr OR     expr              { Binop($1, Or, $3) }
  | expr CAT    expr              { Binop($1, Cat, $3) }
  | MINUS expr %prec NEG          { Unop(Neg, $2) }
  | NOT   expr                    { Unop(Not, $2) }
  | TRUE                          { BoolLit(true) }
  | FALSE                         { BoolLit(false) }
  | INTLIT                        { IntLit($1) }
  | FLOATLIT                      { FloatLit($1) }
  | STRINGLIT                     { StringLit($1) }
  | identifier                    { $1 }
  | LBRACK expr COLON expr RBRACK { Range($2, $4) }
  | RAND                          { Rand }
  | LPAREN expr RPAREN            { $2 }
  | LBRACE states RBRACE          { States(List.rev $2) }
  | LBRACE outcomes RBRACE        { Payoffs(List.rev $2) }

params:
    expr            { [$1] }
  | params BAR expr { $3::$1 }

states:
    state         { [$1] }
  | states state  { $2 :: $1 }

state:
     ID COLON expr COMMA transitions SEMI { ($1, $3, List.rev $5) }

transitions:
   transition                  { [$1] }
 | transitions BAR transition  { $3 :: $1 }

transition:
   LPAREN moves RPAREN ARROW ID { ($2, $5) }

moves:
   move              { [$1] }
 | moves COMMA move  { $3 :: $1 }

move:
   ID    { Move($1) }
 | WILD  { Wild }

outcomes:
   outcome              { [$1] }
 | outcomes BAR outcome { $3 :: $1 }

outcome:
   LPAREN moves RPAREN ARROW LPAREN payoffs RPAREN
   { (List.rev $2, List.rev $6) }

payoffs:
    expr                { [$1] }
  | payoffs COMMA expr  { $3 :: $1 }
