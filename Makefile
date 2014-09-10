all: build

TESTS_FLAG=--enable-tests

NAME=bindings
J=4

setup.ml: _oasis
	oasis setup

setup.data: setup.ml
	ocaml setup.ml -configure $(TESTS_FLAG)

build: setup.data setup.ml
	ocaml setup.ml -build -j $(J)

clean:
	ocamlbuild -clean
	rm -f setup.data setup.log
