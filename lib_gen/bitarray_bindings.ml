open Ctypes

module C(F: Cstubs.FOREIGN) = 
struct

    type bit_array
    let bit_array : bit_array structure typ = structure "BIT_ARRAY"
    let words = field bit_array "words" (ptr uint64_t)
    let num_of_bits = field bit_array "num_of_bits" uint64_t
    let num_of_words = field bit_array "num_of_words" uint64_t
    let capacity_in_words = field bit_array "capacity_in_words" uint64_t
    let () = seal bit_array

    let bit_array_create = F.foreign "bit_array_create" (uint64_t @-> returning (ptr bit_array))
    let bit_array_free = F.foreign "bit_array_free" (ptr bit_array @-> returning void)
    let bit_array_alloc = F.foreign "bit_array_alloc" (ptr bit_array @-> uint64_t @-> returning (ptr bit_array))
    let bit_array_dealloc = F.foreign "bit_array_dealloc" (ptr bit_array @-> returning void)
    let bit_array_length = F.foreign "bit_array_length" (ptr bit_array @-> returning uint64_t)
    let bit_array_resize = F.foreign "bit_array_resize" (ptr bit_array @-> uint64_t @-> returning bool)
    let bit_array_ensure_size = F.foreign "bit_array_ensure_size" (ptr bit_array @-> uint64_t @-> returning char)
    let bit_array_resize_critical = F.foreign "bit_array_resize_critical" (ptr bit_array @-> uint64_t @-> returning void)
    let bit_array_ensure_size_critical = F.foreign "bit_array_ensure_size_critical" (ptr bit_array @-> uint64_t @-> returning void)

    let bit_array_get_bit = F.foreign "bit_array_get_bit" (ptr bit_array @-> uint64_t @-> returning bool)
    let bit_array_set_bit = F.foreign "bit_array_set_bit" (ptr bit_array @-> uint64_t @-> returning void)
    let bit_array_clear_bit = F.foreign "bit_array_clear_bit" (ptr bit_array @-> uint64_t @-> returning void)
    let bit_array_toggle_bit = F.foreign "bit_array_toggle_bit" (ptr bit_array @-> uint64_t @-> returning void)
    let bit_array_assign_bit = F.foreign "bit_array_assign_bit" (ptr bit_array @-> uint64_t @-> bool @-> returning void)

    let bit_array_rget = F.foreign "bit_array_rget" ((ptr bit_array) @-> uint64_t @-> returning char)
    let bit_array_rset = F.foreign "bit_array_rset" ((ptr bit_array) @-> uint64_t @-> returning void)
    let bit_array_rclear = F.foreign "bit_array_rclear" ((ptr bit_array) @-> uint64_t @-> returning void)
    let bit_array_rtoggle = F.foreign "bit_array_rtoggle" ((ptr bit_array) @-> uint64_t @-> returning void)
    let bit_array_rassign = F.foreign "bit_array_rassign" ((ptr bit_array) @-> uint64_t @-> char @-> returning void)

    let bit_array_set_region = F.foreign "bit_array_set_region" (ptr bit_array @-> uint64_t @-> uint64_t @-> returning void)
    let bit_array_clear_region = F.foreign "bit_array_clear_region" (ptr bit_array @-> uint64_t @-> uint64_t @-> returning void)
    let bit_array_toggle_region = F.foreign "bit_array_toggle_region" (ptr bit_array @-> uint64_t @-> uint64_t @-> returning void)

    let bit_array_set_all = F.foreign "bit_array_set_all" (ptr bit_array @-> returning void)
    let bit_array_clear_all = F.foreign "bit_array_clear_all" (ptr bit_array @-> returning void)
    let bit_array_toggle_all = F.foreign "bit_array_toggle_all" (ptr bit_array @-> returning void)

    let bit_array_get_word64 = F.foreign "bit_array_get_word64" (ptr bit_array @-> uint64_t @-> returning uint64_t)
    let bit_array_get_word32 = F.foreign "bit_array_get_word32" (ptr bit_array @-> uint64_t @-> returning uint32_t)
    let bit_array_get_word16 = F.foreign "bit_array_get_word16" (ptr bit_array @-> uint64_t @-> returning uint16_t)
    let bit_array_get_word8 = F.foreign "bit_array_get_word8" (ptr bit_array @-> uint64_t @-> returning uint8_t)
    let bit_array_get_wordn = F.foreign "bit_array_get_wordn" (ptr bit_array @-> uint64_t @-> int @-> returning uint64_t)

    let bit_array_set_word64 = F.foreign "bit_array_set_word64" ((ptr bit_array) @-> uint64_t @-> uint64_t @-> returning void)
    let bit_array_set_word32 = F.foreign "bit_array_set_word32" ((ptr bit_array) @-> uint64_t @-> uint32_t @-> returning void)
    let bit_array_set_word16 = F.foreign "bit_array_set_word16" ((ptr bit_array) @-> uint64_t @-> uint16_t @-> returning void)
    let bit_array_set_word8 = F.foreign "bit_array_set_word8" ((ptr bit_array) @-> uint64_t @-> uint8_t @-> returning void)
    let bit_array_set_wordn = F.foreign "bit_array_set_wordn" ((ptr bit_array) @-> uint64_t @-> uint64_t @-> int @-> returning void)

    let bit_array_num_bits_set = F.foreign "bit_array_num_bits_set" (ptr bit_array @-> returning uint64_t)
    let bit_array_num_bits_cleared = F.foreign "bit_array_num_bits_cleared" (ptr bit_array @-> returning uint64_t)
    let bit_array_hamming_distance = F.foreign "bit_array_hamming_distance" ((ptr bit_array) @-> (ptr bit_array) @-> returning uint64_t)
    let bit_array_parity = F.foreign "bit_array_parity" (ptr bit_array @-> returning bool)
    let bit_array_find_next_set_bit = F.foreign "bit_array_find_next_set_bit" ((ptr bit_array) @-> uint64_t @-> (ptr uint64_t) @-> returning char)
    let bit_array_find_next_clear_bit = F.foreign "bit_array_find_next_clear_bit" ((ptr bit_array) @-> uint64_t @-> (ptr uint64_t) @-> returning char)
    let bit_array_find_prev_set_bit = F.foreign "bit_array_find_prev_set_bit" ((ptr bit_array) @-> uint64_t @-> (ptr uint64_t) @-> returning char)
    let bit_array_find_prev_clear_bit = F.foreign "bit_array_find_prev_clear_bit" ((ptr bit_array) @-> uint64_t @-> (ptr uint64_t) @-> returning char)

    let bit_array_find_first_set_bit = F.foreign "bit_array_find_first_set_bit" (ptr bit_array @-> ptr uint64_t @-> returning bool)
    let bit_array_find_first_clear_bit = F.foreign "bit_array_find_first_clear_bit" (ptr bit_array @-> ptr uint64_t @-> returning bool)
    let bit_array_find_last_set_bit = F.foreign "bit_array_find_last_set_bit" (ptr bit_array @-> ptr uint64_t @-> returning bool)
    let bit_array_find_last_clear_bit = F.foreign "bit_array_find_last_clear_bit" (ptr bit_array @-> ptr uint64_t @-> returning bool)

    let bit_array_sort_bits = F.foreign "bit_array_sort_bits" (ptr bit_array @-> returning void)
    let bit_array_sort_bits_rev = F.foreign "bit_array_sort_bits_rev" (ptr bit_array @-> returning void)
    let bit_array_from_str = F.foreign "bit_array_from_str" (ptr bit_array @-> string @-> returning void)
    let bit_array_from_substr = F.foreign "bit_array_from_substr" (ptr bit_array @-> uint64_t @->
        string @-> size_t @-> string @-> string @-> char @-> returning void)
    let bit_array_to_str = F.foreign "bit_array_to_str" (ptr bit_array @-> string @-> returning string)
    let bit_array_to_str_rev = F.foreign "bit_array_to_str_rev" (ptr bit_array @-> string @-> returning string)

    let bit_array_clone = F.foreign "bit_array_clone" (ptr bit_array @-> returning (ptr bit_array))

    let bit_array_and = F.foreign "bit_array_and" (ptr bit_array @-> ptr bit_array @-> ptr bit_array @-> returning void)
    let bit_array_or = F.foreign "bit_array_or" (ptr bit_array @-> ptr bit_array @-> ptr bit_array @-> returning void)
    let bit_array_xor = F.foreign "bit_array_xor" (ptr bit_array @-> ptr bit_array @-> ptr bit_array @-> returning void)
    let bit_array_not = F.foreign "bit_array_not" (ptr bit_array @-> ptr bit_array @-> returning void)

    let bit_array_cmp = F.foreign "bit_array_cmp" (ptr bit_array @-> ptr bit_array @-> returning int)

    let bit_array_shift_right = F.foreign "bit_array_shift_right" (ptr bit_array @-> uint64_t @-> bool @-> returning void)
    let bit_array_shift_left = F.foreign "bit_array_shift_left" (ptr bit_array @-> uint64_t @-> bool @-> returning void)

    let bit_array_reverse = F.foreign "bit_array_reverse" (ptr bit_array @-> returning void)
    let bit_array_reverse_region = F.foreign "bit_array_reverse_region" (ptr bit_array @-> uint64_t @-> uint64_t @-> returning void)

    let bit_array_divide = F.foreign "bit_array_divide" (ptr bit_array @-> ptr bit_array @-> ptr bit_array @-> returning void)
    let bit_array_hash = F.foreign "bit_array_hash" (ptr bit_array @-> uint64_t @-> returning uint64_t)

    let bit_array_random = F.foreign "bit_array_random" (ptr bit_array @-> float @-> returning void)
    let bit_array_shuffle = F.foreign "bit_array_shuffle" (ptr bit_array @-> returning void)

    let bit_array_next_permutation = F.foreign "bit_array_next_permutation" (ptr bit_array @-> returning void)

end

