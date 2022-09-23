(lang dune 2.9)
(name pl)
(using menhir 2.1)
(generate_opam_files true)
(license MIT)
(maintainers diohabara)
(authors diohabara)
(source
 (github diohabara/pl))
(documentation "https://github.com/diohabara/pl#readme")
(package
 (name pl)
 (depends
  (core
   (>= v0.14.1))
  (stdio
   (>= v0.14.0))
  (menhir
   (>= 	20220210))
  (ocaml
   (>= 4.13.1))
  (ocamlformat
   (>= 0.21.0))
  (ocamlformat-rpc
   (>= 0.21.0))
  (ocaml-lsp-server
   (>= 1.13.1))
  (odoc
   (>= 2.0.2)))
 (synopsis "Educative Programming Language")
 (description "With Type System"))
