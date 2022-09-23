FROM ocaml/opam:ubuntu-20.04-ocaml-4.14
WORKDIR /app
COPY . .

RUN opam switch create . ocaml-base-compiler
RUN eval $(opam env)
RUN opam install -y dune
RUN dune build
RUN opam install . --deps-only