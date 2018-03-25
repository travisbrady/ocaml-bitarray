# ocaml-bitarray
OCaml bindings to the C-based [Bitarray](https://github.com/noporpoise/BitArray) library via ctypes

## Summary
This repository provides OCaml binding's to [noporpoise's](https://github.com/noporpoise) full-featured Bitarray library.

## Why
Bitarray is an easy-to-use C library providing most any bitarray functionality you'd ever need excepting compression.
The API is easy-to-read, well-tested and very easy to bind to.

## Installation
Do standard thing
```
$ ocaml setup.ml -configure
$ ocaml setup.ml -build
$ ocaml setup.ml -install
```

## Usage
See [simple.ml](examples/simple.ml) and [the mli](lib/bitarray.mli) to get a sense of how this works.
