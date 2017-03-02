
type t

val create : int64 -> t
val length : t -> int64
val resize : t -> int64 -> bool
val get_bit : t -> int64 -> bool
val set_bit : t -> int64 -> unit
val clear_bit : t -> int64 -> unit
val toggle_bit : t -> int64 -> unit
val assign_bit : t -> int64 -> bool -> unit
val set_region : t -> int64 -> int64 -> unit
val clear_region : t -> int64 -> int64 -> unit
val toggle_region : t -> int64 -> int64 -> unit
val set_all : t -> unit
val clear_all : t -> unit
val toggle_all : t -> unit
val num_bits_set : t -> int64
val num_bits_cleared : t -> int64
val hamming_distance : t -> t -> int64

val parity : t -> bool
(** [parity] returns [true] if odd number of bits set
 *  [parity] returns [false] if even number of bits set *)

val find_first_set_bit : t -> int64 option
(** [find_first_set_bit] returns the (Some [index]) of the first set bit if one exists
 * otherwise None *)
val find_first_clear_bit : t -> int64 option
val find_last_set_bit : t -> int64 option
val find_last_clear_bit : t -> int64 option

val find_next_set_bit : t -> int64 -> int64 option
val find_next_clear_bit : t -> int64 -> int64 option
val find_prev_set_bit : t -> int64 -> int64 option
val find_prev_clear_bit : t -> int64 -> int64 option

val sort_bits : t -> unit
val sort_bits_rev : t -> unit

val clone : t -> t
(** Copy a bitarray struct and the data it holds *)

val bitwise_and : t -> t -> t
val bitwise_or : t -> t -> t
val bitwise_xor : t -> t -> t
val bitwise_not : t -> t

val cmp : t -> t -> int
(**
 * comparison functions return:
 *   1 iff bitarr1 > bitarr2
 *   0 iff bitarr1 == bitarr2
 *  -1 iff bitarr1 < bitarr2

 * Compare two bit arrays by value stored, with index 0 being the Least
 * Significant Bit (LSB). Arrays do not have to be the same length.
 * Example: ..0101 (5) > ...0011 (3) [index 0 is LSB at right hand side]
*)

val shift_right : ?fill:bool -> t -> int64 -> unit
(** [shift_right ba num_bits] shifts [ba] right by [num_bits] *)

val shift_left : ?fill:bool -> t -> int64 -> unit
(** [shift_left ba num_bits] shifts [ba] left by [num_bits] *)

val add_uint64 : t -> int64 -> unit
(** [add_uint64 ba value] adds [value] to [ba] *)

val reverse : t -> unit
(** [reverse ba] reverses [ba] in place *)

val reverse_region : t -> int64 -> int64 -> unit
(** [reverse_region ba start len] reverses [len] bits starting at [start] *)

val random : t -> float -> unit
(** [random] sets bits randomly with probability [prob] *)
