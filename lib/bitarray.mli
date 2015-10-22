type bit_array
val bit_array : bit_array Ctypes.structure Ctypes.typ
val words :
  (Unsigned.uint64 Ctypes_static.ptr, bit_array Ctypes.structure)
  Ctypes.field
val num_of_bits : (Unsigned.uint64, bit_array Ctypes.structure) Ctypes.field
val num_of_words : (Unsigned.uint64, bit_array Ctypes.structure) Ctypes.field
val capacity_in_words :
  (Unsigned.uint64, bit_array Ctypes.structure) Ctypes.field
val bit_array_create :
  Unsigned.uint64 -> bit_array Ctypes.structure Ctypes_static.ptr
val bit_array_free : bit_array Ctypes.structure Ctypes_static.ptr -> unit
val bit_array_alloc :
  bit_array Ctypes.structure Ctypes_static.ptr ->
  Unsigned.uint64 -> bit_array Ctypes.structure Ctypes_static.ptr
val bit_array_dealloc : bit_array Ctypes.structure Ctypes_static.ptr -> unit
val bit_array_length :
  bit_array Ctypes.structure Ctypes_static.ptr -> Unsigned.uint64
val bit_array_resize :
  bit_array Ctypes.structure Ctypes_static.ptr -> Unsigned.uint64 -> char
val bit_array_ensure_size :
  bit_array Ctypes.structure Ctypes_static.ptr -> Unsigned.uint64 -> char
val bit_array_resize_critical :
  bit_array Ctypes.structure Ctypes_static.ptr -> Unsigned.uint64 -> unit
val bit_array_ensure_size_critical :
  bit_array Ctypes.structure Ctypes_static.ptr -> Unsigned.uint64 -> unit
val bit_array_get_bit :
  bit_array Ctypes.structure Ctypes_static.ptr -> Unsigned.uint64 -> bool
val bit_array_set_bit :
  bit_array Ctypes.structure Ctypes_static.ptr -> Unsigned.uint64 -> unit
val bit_array_clear_bit :
  bit_array Ctypes.structure Ctypes_static.ptr -> Unsigned.uint64 -> unit
val bit_array_toggle_bit :
  bit_array Ctypes.structure Ctypes_static.ptr -> Unsigned.uint64 -> unit
val bit_array_assign_bit :
  bit_array Ctypes.structure Ctypes_static.ptr ->
  Unsigned.uint64 -> bool -> unit
val bit_array_rget :
  bit_array Ctypes.structure Ctypes_static.ptr -> Unsigned.uint64 -> char
val bit_array_rset :
  bit_array Ctypes.structure Ctypes_static.ptr -> Unsigned.uint64 -> unit
val bit_array_rclear :
  bit_array Ctypes.structure Ctypes_static.ptr -> Unsigned.uint64 -> unit
val bit_array_rtoggle :
  bit_array Ctypes.structure Ctypes_static.ptr -> Unsigned.uint64 -> unit
val bit_array_rassign :
  bit_array Ctypes.structure Ctypes_static.ptr ->
  Unsigned.uint64 -> char -> unit
val bit_array_set_region :
  bit_array Ctypes.structure Ctypes_static.ptr ->
  Unsigned.uint64 -> Unsigned.uint64 -> unit
val bit_array_clear_region :
  bit_array Ctypes.structure Ctypes_static.ptr ->
  Unsigned.uint64 -> Unsigned.uint64 -> unit
val bit_array_toggle_region :
  bit_array Ctypes.structure Ctypes_static.ptr ->
  Unsigned.uint64 -> Unsigned.uint64 -> unit
val bit_array_set_all : bit_array Ctypes.structure Ctypes_static.ptr -> unit
val bit_array_clear_all :
  bit_array Ctypes.structure Ctypes_static.ptr -> unit
val bit_array_toggle_all :
  bit_array Ctypes.structure Ctypes_static.ptr -> unit
val bit_array_get_word64 :
  bit_array Ctypes.structure Ctypes_static.ptr ->
  Unsigned.uint64 -> Unsigned.uint64
val bit_array_get_word32 :
  bit_array Ctypes.structure Ctypes_static.ptr ->
  Unsigned.uint64 -> Unsigned.uint32
val bit_array_get_word16 :
  bit_array Ctypes.structure Ctypes_static.ptr ->
  Unsigned.uint64 -> Unsigned.uint16
val bit_array_get_word8 :
  bit_array Ctypes.structure Ctypes_static.ptr ->
  Unsigned.uint64 -> Unsigned.uint8
val bit_array_get_wordn :
  bit_array Ctypes.structure Ctypes_static.ptr ->
  Unsigned.uint64 -> int -> Unsigned.uint64
val bit_array_set_word64 :
  bit_array Ctypes.structure Ctypes_static.ptr ->
  Unsigned.uint64 -> Unsigned.uint64 -> unit
val bit_array_set_word32 :
  bit_array Ctypes.structure Ctypes_static.ptr ->
  Unsigned.uint64 -> Unsigned.uint32 -> unit
val bit_array_set_word16 :
  bit_array Ctypes.structure Ctypes_static.ptr ->
  Unsigned.uint64 -> Unsigned.uint16 -> unit
val bit_array_set_word8 :
  bit_array Ctypes.structure Ctypes_static.ptr ->
  Unsigned.uint64 -> Unsigned.uint8 -> unit
val bit_array_set_wordn :
  bit_array Ctypes.structure Ctypes_static.ptr ->
  Unsigned.uint64 -> Unsigned.uint64 -> int -> unit
val bit_array_num_bits_set :
  bit_array Ctypes.structure Ctypes_static.ptr -> Unsigned.uint64
val bit_array_num_bits_cleared :
  bit_array Ctypes.structure Ctypes_static.ptr -> Unsigned.uint64
val bit_array_hamming_distance :
  bit_array Ctypes.structure Ctypes_static.ptr ->
  bit_array Ctypes.structure Ctypes_static.ptr -> Unsigned.uint64
val bit_array_parity : bit_array Ctypes.structure Ctypes_static.ptr -> char
val bit_array_find_next_set_bit :
  bit_array Ctypes.structure Ctypes_static.ptr ->
  Unsigned.uint64 -> Unsigned.uint64 Ctypes_static.ptr -> char
val bit_array_find_next_clear_bit :
  bit_array Ctypes.structure Ctypes_static.ptr ->
  Unsigned.uint64 -> Unsigned.uint64 Ctypes_static.ptr -> char
val bit_array_find_prev_set_bit :
  bit_array Ctypes.structure Ctypes_static.ptr ->
  Unsigned.uint64 -> Unsigned.uint64 Ctypes_static.ptr -> char
val bit_array_find_prev_clear_bit :
  bit_array Ctypes.structure Ctypes_static.ptr ->
  Unsigned.uint64 -> Unsigned.uint64 Ctypes_static.ptr -> char
val bit_array_find_first_set_bit :
  bit_array Ctypes.structure Ctypes_static.ptr ->
  Unsigned.uint64 Ctypes_static.ptr -> char
val bit_array_find_first_clear_bit :
  bit_array Ctypes.structure Ctypes_static.ptr ->
  Unsigned.uint64 Ctypes_static.ptr -> char
val bit_array_find_last_set_bit :
  bit_array Ctypes.structure Ctypes_static.ptr ->
  Unsigned.uint64 Ctypes_static.ptr -> char
val bit_array_find_last_clear_bit :
  bit_array Ctypes.structure Ctypes_static.ptr ->
  Unsigned.uint64 Ctypes_static.ptr -> char
val bit_array_sort_bits :
  bit_array Ctypes.structure Ctypes_static.ptr -> unit
val bit_array_sort_bits_rev :
  bit_array Ctypes.structure Ctypes_static.ptr -> unit
val bit_array_from_str :
  bit_array Ctypes.structure Ctypes_static.ptr -> string -> unit
val bit_array_from_substr :
  bit_array Ctypes.structure Ctypes_static.ptr ->
  Unsigned.uint64 ->
  string -> Unsigned.size_t -> string -> string -> char -> unit
val bit_array_to_str :
  bit_array Ctypes.structure Ctypes_static.ptr -> string -> string
val bit_array_to_str_rev :
  bit_array Ctypes.structure Ctypes_static.ptr -> string -> string
val bit_array_and :
  bit_array Ctypes.structure Ctypes_static.ptr ->
  bit_array Ctypes.structure Ctypes_static.ptr ->
  bit_array Ctypes.structure Ctypes_static.ptr -> unit
val bit_array_or :
  bit_array Ctypes.structure Ctypes_static.ptr ->
  bit_array Ctypes.structure Ctypes_static.ptr ->
  bit_array Ctypes.structure Ctypes_static.ptr -> unit
val bit_array_xor :
  bit_array Ctypes.structure Ctypes_static.ptr ->
  bit_array Ctypes.structure Ctypes_static.ptr ->
  bit_array Ctypes.structure Ctypes_static.ptr -> unit
val bit_array_not :
  bit_array Ctypes.structure Ctypes_static.ptr ->
  bit_array Ctypes.structure Ctypes_static.ptr -> unit
val bit_array_hash :
  bit_array Ctypes.structure Ctypes_static.ptr ->
  Unsigned.uint64 -> Unsigned.uint64
val bit_array_random :
  bit_array Ctypes.structure Ctypes_static.ptr -> float -> unit
val bit_array_shuffle : bit_array Ctypes.structure Ctypes_static.ptr -> unit
val bit_array_next_permutation :
  bit_array Ctypes.structure Ctypes_static.ptr -> unit
