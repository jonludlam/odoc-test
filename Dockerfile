FROM ocaml/opam2:ubuntu
USER opam

RUN sudo apt-get update
RUN opam depext -y odoc dune
RUN opam install -y dune num ocaml-compiler-libs

RUN opam pin add odoc git://github.com/ocaml/odoc

WORKDIR /home/opam/odoc-test
CMD ["./build.sh"]

