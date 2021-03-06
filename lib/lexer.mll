{
  open Parser
}

let white = [' ' '\t' '\n' '\r']+
let digit = ['0'-'9']
let int = digit+

rule read = parse
  | white { read lexbuf }
  | "+" { PLUS }
  | "-" { MINUS }
  | "*" { MULT }
  | "/" { DIV }
  | "%" { MOD }
  | "(" { LPAREN }
  | ")" { RPAREN }
  | int { INT (int_of_string (Lexing.lexeme lexbuf)) }
  | eof { EOF }