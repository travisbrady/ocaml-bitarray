
type t

val create : int64 -> t
val free : t -> unit
val length : t -> int64
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

val bitwise_and : t -> t -> t
val bitwise_or : t -> t -> t
val bitwise_xor : t -> t -> t
val bitwise_not : t -> t
