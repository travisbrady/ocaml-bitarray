open Ctypes

module C = Bitarray_bindings.C(Bitarray_generated)

type t = C.bit_array Ctypes.structure
type hack

let _create size =
    C.bit_array_create (Unsigned.UInt64.of_int64 size)

let free ba =
    C.bit_array_free ba

let create size =
    let ba = make ~finalise:(fun p ->
        C.bit_array_dealloc (addr p)
    ) C.bit_array in
    let _ = C.bit_array_alloc (addr ba) (Unsigned.UInt64.of_int64 size) in
    ba


let length ba =
    C.bit_array_length (addr ba)
    |> Unsigned.UInt64.to_int64

let resize ba num_bits =
    C.bit_array_resize (addr ba) (Unsigned.UInt64.of_int64 num_bits)

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

let find_bit op ba =
    let out_idx = Unsigned.UInt64.of_int 0 in
    let out_idx_ptr = allocate uint64_t out_idx in
    let ret = op (addr ba) out_idx_ptr in
    if ret then (Some (Unsigned.UInt64.to_int64 !@out_idx_ptr)) else None

let find_first_set_bit = find_bit C.bit_array_find_first_set_bit
let find_first_clear_bit = find_bit C.bit_array_find_first_clear_bit
let find_last_set_bit = find_bit C.bit_array_find_last_set_bit
let find_last_clear_bit = find_bit C.bit_array_find_last_clear_bit

let find_bit_offset op ba offset =
    let out_idx = Unsigned.UInt64.of_int 0 in
    let out_idx_ptr = allocate uint64_t out_idx in
    let ret = op (addr ba) (Unsigned.UInt64.of_int64 offset) out_idx_ptr in
    if ret then (Some (Unsigned.UInt64.to_int64 !@out_idx_ptr)) else None

let find_next_set_bit = find_bit_offset C.bit_array_find_next_set_bit
let find_next_clear_bit = find_bit_offset C.bit_array_find_next_clear_bit
let find_prev_set_bit = find_bit_offset C.bit_array_find_prev_set_bit
let find_prev_clear_bit = find_bit_offset C.bit_array_find_prev_clear_bit


let sort_bits ba = C.bit_array_sort_bits (addr ba)
let sort_bits_rev ba = C.bit_array_sort_bits_rev (addr ba)

let of_string str =
    let ba = create 0L in
    C.bit_array_from_str (addr ba) str;
    ba

let clone ba =
    let ba_ptr = C.bit_array_clone (addr ba) in
    !@ba_ptr

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

let cmp ba1 ba2 = C.bit_array_cmp (addr ba1) (addr ba2)

let shift_right ?(fill=false) ba num_bits =
    C.bit_array_shift_right (addr ba) (Unsigned.UInt64.of_int64 num_bits) fill

let shift_left ?(fill=false) ba num_bits =
    C.bit_array_shift_left (addr ba) (Unsigned.UInt64.of_int64 num_bits) fill

let add_uint64 ba value =
    C.bit_array_add_uint64 (addr ba) (Unsigned.UInt64.of_int64 value)

let reverse ba = C.bit_array_reverse (addr ba)
let reverse_region ba start len =
    C.bit_array_reverse_region (addr ba) (Unsigned.UInt64.of_int64 start) (Unsigned.UInt64.of_int64 len)

let random ba prob = C.bit_array_random (addr ba) prob
let shuffle ba = C.bit_array_shuffle (addr ba)
let next_permutation ba = C.bit_array_next_permutation (addr ba)
