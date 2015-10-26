open Ctypes

module C = Bitarray_bindings.C(Bitarray_generated)

type t = C.bit_array Ctypes.structure

let _create size =
    C.bit_array_create (Unsigned.UInt64.of_int64 size)

let free ba =
    C.bit_array_free ba

let create size =
    let ba = make ~finalise:(fun p ->
        C.bit_array_free (addr p)
    ) C.bit_array in
    C.bit_array_alloc (addr ba) (Unsigned.UInt64.of_int64 size);
    ba

let length ba =
    C.bit_array_length (addr ba)
    |> Unsigned.UInt64.to_int64

let get_bit ba idx =
    C.bit_array_get_bit (addr ba) (Unsigned.UInt64.of_int64 idx)

let set_bit ba idx =
    C.bit_array_set_bit (addr ba) (Unsigned.UInt64.of_int64 idx)

let clear_bit ba idx =
    C.bit_array_clear_bit (addr ba) (Unsigned.UInt64.of_int64 idx)

let toggle_bit ba idx =
    C.bit_array_toggle_bit (addr ba) (Unsigned.UInt64.of_int64 idx)

let assign_bit ba idx value =
    C.bit_array_assign_bit (addr ba) (Unsigned.UInt64.of_int64 idx) value

let set_region ba start_idx end_idx =
    C.bit_array_set_region (addr ba) (Unsigned.UInt64.of_int64 start_idx) (Unsigned.UInt64.of_int64 end_idx)

let clear_region ba start_idx end_idx =
    C.bit_array_clear_region (addr ba) (Unsigned.UInt64.of_int64 start_idx) (Unsigned.UInt64.of_int64 end_idx)

let toggle_region ba start_idx end_idx =
    C.bit_array_toggle_region (addr ba) 
        (Unsigned.UInt64.of_int64 start_idx)
        (Unsigned.UInt64.of_int64 end_idx)

let set_all ba = C.bit_array_set_all (addr ba)
let clear_all ba = C.bit_array_clear_all (addr ba)
let toggle_all ba = C.bit_array_toggle_all (addr ba)

let num_bits_set ba = (C.bit_array_num_bits_set (addr ba)) |> Unsigned.UInt64.to_int64
let num_bits_cleared ba = (C.bit_array_num_bits_cleared (addr ba)) |> Unsigned.UInt64.to_int64
let hamming_distance ba bb = (C.bit_array_hamming_distance (addr ba) (addr bb)) |> Unsigned.UInt64.to_int64
let parity ba = C.bit_array_parity (addr ba)

let bitwise_op op ba bb =
    let len_a = length ba in
    let len_b = length bb in
    if len_a <> len_b then 
        raise (Invalid_argument "inputs a and b must be of equal length")
    else
        let dest = create len_a in
        op (addr dest) (addr ba) (addr bb);
        dest

let bitwise_and = bitwise_op C.bit_array_and
let bitwise_or = bitwise_op C.bit_array_or
let bitwise_xor = bitwise_op C.bit_array_xor
let bitwise_not ba =
    let len_a = length ba in
    let dest = create len_a in
    C.bit_array_not (addr dest) (addr ba);
    dest

let random ba prob = C.bit_array_random (addr ba) prob
let shuffle ba = C.bit_array_shuffle (addr ba)
let next_permutation ba = C.bit_array_next_permutation (addr ba)
