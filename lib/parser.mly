%token <int> INT
%token PLUS
%token MULT
%token EOF

// lower precedence
%left PLUS
%left MULT
// higher precedence

%start <Ast.expr> prog

%%

prog:
  | e = expr; EOF { e }
  ;

expr:
  | i = INT { Ast.Int i }
  | e1 = expr; PLUS; e2 = expr { Ast.Binop (Ast.Add, e1, e2) }
  | e1 = expr; MULT; e2 = expr { Ast.Binop (Ast.Mult, e1, e2) }
  ;