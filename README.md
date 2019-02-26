A fixed test suite for odoc
===========================

To use this repo you must first clone the submodules:

```
git submodule init
git submodule update
```

The docs can then be built with a local install of dune and odoc as follows:

```
dune build @doc
```

To build using Docker, run:

```
docker build -t odoc-test .
docker run -v `pwd`:/home/opam/odoc-test odoc-test
```


