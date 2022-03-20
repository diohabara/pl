%token <int> INT
%token PLUS
%token EOF

%start <Ast.expr> prog

%%

prog:
  | e = expr; EOF { e }
  ;

expr:
  | i = INT { Ast.Int i }
  | e1 = expr; PLUS; e2 = expr { Ast.Binop (Ast.Add, e1, e2) }
  ;