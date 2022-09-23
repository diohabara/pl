# pl

a reference language for my blog.

## setup

```bash
opam switch create . ocaml-base-compiler
eval $(opam env)
opam install . --deps-only
```

## test

```bash
dune runtest
```
