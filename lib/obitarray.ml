(*
open Ctypes

type t = Bitarray.C.bit_array Ctypes.structure Ctypes_static.ptr

let create size =
    Bitarray.C.bit_array_create (Unsigned.UInt64.of_int64 size)

let free ba =
    Bitarray.C.bit_array_free ba

let length ba =
    Bitarray.C.bit_array_length ba
    |> Unsigned.UInt64.to_int64

let get_bit ba idx =
    Bitarray.C.bit_array_get_bit ba (Unsigned.UInt64.of_int64 idx)

let set_bit ba idx =
    Bitarray.C.bit_array_set_bit ba (Unsigned.UInt64.of_int64 idx)

let clear_bit ba idx =
    Bitarray.C.bit_array_clear_bit ba (Unsigned.UInt64.of_int64 idx)

let toggle_bit ba idx =
    Bitarray.C.bit_array_toggle_bit ba (Unsigned.UInt64.of_int64 idx)

let assign_bit ba idx value =
    Bitarray.C.bit_array_assign_bit ba (Unsigned.UInt64.of_int64 idx) value

let set_region ba start_idx end_idx =
    Bitarray.C.bit_array_set_region ba  (Unsigned.UInt64.of_int64 start_idx) (Unsigned.UInt64.of_int64 end_idx)

let clear_region ba start_idx end_idx =
    Bitarray.C.bit_array_clear_region ba  (Unsigned.UInt64.of_int64 start_idx) (Unsigned.UInt64.of_int64 end_idx)

let toggle_region ba start_idx end_idx =
    Bitarray.C.bit_array_toggle_region ba  (Unsigned.UInt64.of_int64 start_idx) (Unsigned.UInt64.of_int64 end_idx)

let set_all ba = Bitarray.C.bit_array_set_all ba
let clear_all ba = Bitarray.C.bit_array_clear_all ba
let toggle_all ba = Bitarray.C.bit_array_toggle_all ba

let num_bits_set ba = (Bitarray.C.bit_array_num_bits_set ba) |> Unsigned.UInt64.to_int64
let num_bits_cleared ba = (Bitarray.C.bit_array_num_bits_cleared ba) |> Unsigned.UInt64.to_int64
let hamming_distance ba bb = (Bitarray.C.bit_array_hamming_distance ba bb) |> Unsigned.UInt64.to_int64
let parity ba = Bitarray.C.bit_array_parity ba

let bitwise_op op ba bb =
    let len_a = Bitarray.C.bit_array_length ba in
    let len_b = Bitarray.C.bit_array_length bb in
    if len_a <> len_b then 
        raise (Invalid_argument "inputs a and b must be of equal length")
    else
        let dest = Bitarray.C.bit_array_create len_a in
        op dest ba bb;
        dest

let bitwise_and = bitwise_op Bitarray.C.bit_array_and
let bitwise_or = bitwise_op Bitarray.C.bit_array_or
let bitwise_xor = bitwise_op Bitarray.C.bit_array_xor
let bitwise_not ba =
    let len_a = Bitarray.C.bit_array_length ba in
    let dest = Bitarray.C.bit_array_create len_a in
    Bitarray.C.bit_array_not dest ba;
    dest

let random ba prob = Bitarray.C.bit_array_random ba prob
*)
