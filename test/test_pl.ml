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
  [%expect {| 77 |}]
;;

let%expect_test "multiplication" =
  interp "2*2" |> print_endline;
  [%expect {| 4 |}];
  interp "2*2*3" |> print_endline;
  [%expect {| 12 |}];
  interp "2*10+2" |> print_endline;
  [%expect {| 22 |}];
  interp "2+10*2" |> print_endline;
  [%expect {| 22 |}]
;;

let%expect_test "paranthesize" =
  interp "2 * (10 + 5)" |> print_endline;
  [%expect{| 30 |}];
  interp "(30 + 1) * 3" |> print_endline;
  [%expect{| 93 |}]
;;
