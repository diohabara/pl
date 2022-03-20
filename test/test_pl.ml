open! Core
open Pl.Interp

let%expect_test "integer" =
  interp "11" |> print_endline;
  [%expect {| 11 |}];
  interp "-22" |> print_endline;
  [%expect {| -22 |}]
;;

let%expect_test "addition" =
  interp "33+44" |> print_endline;
  [%expect{| 77 |}]
;;
