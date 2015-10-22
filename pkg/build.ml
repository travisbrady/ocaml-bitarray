#!/usr/bin/env ocaml
#directory "pkg";;
#use "topkg.ml";;

let () =
  Pkg.describe "obitarray" ~builder:`OCamlbuild [
    Pkg.lib "pkg/META";
    Pkg.lib ~exts:Exts.module_library "lib/bitarray" ~dst:"bitarray/bitarray";
    Pkg.lib ~exts:Exts.module_library "lib/obitarray" ~dst:"bitarray/obitarray";
    Pkg.lib ~exts:Exts.c_library "lib/libbitarray_stubs" ~dst:"bitarray/libbitarray_stubs";
    Pkg.stublibs ~exts:Exts.c_dll_library "lib/dllbitarray_stubs";
    Pkg.bin ~auto:true "examples/simple";
    Pkg.bin ~auto:true "examples/hello";
  ]
