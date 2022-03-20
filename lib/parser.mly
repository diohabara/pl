%token <int> INT
%token PLUS
%token MINUS
%token MULT
%token DIV
%token MOD
%token LPAREN
%token RPAREN
%token EOF

// lower precedence
%left PLUS MINUS
%left MULT DIV MOD
// higher precedence

%start <Ast.expr> prog

%%

prog:
  | e = expr; EOF { e }
  ;

expr:
  | i = INT { Ast.Int i }
  | MINUS; e = expr { Ast.Binop (Ast.Minus, Ast.Int(0), e) }
  | e1 = expr; PLUS; e2 = expr { Ast.Binop (Ast.Add, e1, e2) }
  | e1 = expr; MINUS; e2 = expr { Ast.Binop (Ast.Minus, e1, e2) }
  | e1 = expr; MULT; e2 = expr { Ast.Binop (Ast.Mult, e1, e2) }
  | e1 = expr; DIV; e2 = expr { Ast.Binop (Ast.Div, e1, e2) }
  | e1 = expr; MOD; e2 = expr { Ast.Binop (Ast.Mod, e1, e2) }
  | LPAREN; e = expr; RPAREN { e }
  ;