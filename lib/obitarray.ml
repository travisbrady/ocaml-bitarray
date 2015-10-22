open Ctypes

type t = Bitarray.bit_array Ctypes.structure Ctypes_static.ptr

let create size =
    Bitarray.bit_array_create (Unsigned.UInt64.of_int64 size)

let length ba =
    Bitarray.bit_array_length ba
    |> Unsigned.UInt64.to_int64

let get_bit ba idx =
    Bitarray.bit_array_get_bit ba (Unsigned.UInt64.of_int64 idx)

let set_bit ba idx =
    Bitarray.bit_array_set_bit ba (Unsigned.UInt64.of_int64 idx)

let clear_bit ba idx =
    Bitarray.bit_array_clear_bit ba (Unsigned.UInt64.of_int64 idx)

let toggle_bit ba idx =
    Bitarray.bit_array_toggle_bit ba (Unsigned.UInt64.of_int64 idx)

let assign_bit ba idx value =
    Bitarray.bit_array_assign_bit ba (Unsigned.UInt64.of_int64 idx) value

let set_region ba start_idx end_idx =
    Bitarray.bit_array_set_region ba  (Unsigned.UInt64.of_int64 start_idx) (Unsigned.UInt64.of_int64 end_idx)

let clear_region ba start_idx end_idx =
    Bitarray.bit_array_clear_region ba  (Unsigned.UInt64.of_int64 start_idx) (Unsigned.UInt64.of_int64 end_idx)

let bitwise_and ba bb =
    let len_a = Bitarray.bit_array_length ba in
    let len_b = Bitarray.bit_array_length bb in
    if len_a <> len_b then 
        raise (Invalid_argument "inputs a and b must be of equal length")
    else
        let dest = Bitarray.bit_array_create len_a in
        Bitarray.bit_array_and dest ba bb;
        dest
