open Ast

(** [parse s] parsers [s] into an AST. *)
let parse (s : string) : expr =
  let lexbuf = Lexing.from_string s in
  let ast = Parser.prog Lexer.read lexbuf in
  ast
;;

(** [string_of_val e] converts [e] to a string.
  Requires: [e] is a value. *)
let string_of_val (e : expr) : string =
  match e with
  | Int i -> string_of_int i
;;

(** [is_value e] is whether [e] is a value. *)
let is_value : expr -> bool = function
  | Int _ -> true
;;

(** [step e] takes a single step of evaluation of [e]. *)
let rec step : expr -> expr = function
  | Int i -> step (Int i)
;;

(** [eval e] fully evaluates [e] to a value [v]. *)
let rec eval (e : expr) : expr = if is_value e then e else e |> step |> eval

(** [interp s] interprets [s] by lexing and parsing it,
  evaluating it, and converting the result to a string. *)
let interp (s : string) : string = s |> parse |> eval |> string_of_val
