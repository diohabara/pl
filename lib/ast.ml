type bop =
  | Add
  | Minus
  | Mult
  | Div
  | Mod

type expr =
  | Int of int
  | Binop of bop * expr * expr
