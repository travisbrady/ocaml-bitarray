
type t

val create : int64 -> t
val length : t -> int64
val get_bit : t -> int64 -> bool
val set_bit : t -> int64 -> unit
val clear_bit : t -> int64 -> unit
val toggle_bit : t -> int64 -> unit
val assign_bit : t -> int64 -> bool -> unit
val set_region : t -> int64 -> int64 -> unit
val clear_region : t -> int64 -> int64 -> unit
val bitwise_and : t -> t -> t
