open Ctypes

let _ =
  let fmt = Format.formatter_of_out_channel (open_out "lib/bitarray_stubs.c") in
  (*
  Format.fprintf fmt "#include <caml/mlvalues.h>@.";
  Format.fprintf fmt "#include <ctypes/ctypes_cstubs_internals.h>@.";
  *)
  Format.fprintf fmt "#include \"bit_array.h\"@.";
  Cstubs.write_c fmt ~prefix:"caml_" (module Bitarray_bindings.C);

  let fmt = Format.formatter_of_out_channel (open_out "lib/Bitarray_generated.ml") in
  Cstubs.write_ml fmt ~prefix:"caml_" (module Bitarray_bindings.C)
