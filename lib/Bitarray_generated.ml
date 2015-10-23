module CI = Cstubs_internals

external caml__1_bit_array_create : Unsigned.uint64 -> CI.voidp
  = "caml__1_bit_array_create" 

external caml__2_bit_array_free : _ CI.fatptr -> unit
  = "caml__2_bit_array_free" 

external caml__3_bit_array_alloc : _ CI.fatptr -> Unsigned.uint64 -> CI.voidp
  = "caml__3_bit_array_alloc" 

external caml__4_bit_array_dealloc : _ CI.fatptr -> unit
  = "caml__4_bit_array_dealloc" 

external caml__5_bit_array_length : _ CI.fatptr -> Unsigned.uint64
  = "caml__5_bit_array_length" 

external caml__6_bit_array_resize : _ CI.fatptr -> Unsigned.uint64 -> char
  = "caml__6_bit_array_resize" 

external caml__7_bit_array_ensure_size
  : _ CI.fatptr -> Unsigned.uint64 -> char = "caml__7_bit_array_ensure_size" 

external caml__8_bit_array_resize_critical
  : _ CI.fatptr -> Unsigned.uint64 -> unit
  = "caml__8_bit_array_resize_critical" 

external caml__9_bit_array_ensure_size_critical
  : _ CI.fatptr -> Unsigned.uint64 -> unit
  = "caml__9_bit_array_ensure_size_critical" 

external caml__10_bit_array_get_bit : _ CI.fatptr -> Unsigned.uint64 -> bool
  = "caml__10_bit_array_get_bit" 

external caml__11_bit_array_set_bit : _ CI.fatptr -> Unsigned.uint64 -> unit
  = "caml__11_bit_array_set_bit" 

external caml__12_bit_array_clear_bit
  : _ CI.fatptr -> Unsigned.uint64 -> unit = "caml__12_bit_array_clear_bit" 

external caml__13_bit_array_toggle_bit
  : _ CI.fatptr -> Unsigned.uint64 -> unit = "caml__13_bit_array_toggle_bit" 

external caml__14_bit_array_assign_bit
  : _ CI.fatptr -> Unsigned.uint64 -> bool -> unit
  = "caml__14_bit_array_assign_bit" 

external caml__15_bit_array_rget : _ CI.fatptr -> Unsigned.uint64 -> char
  = "caml__15_bit_array_rget" 

external caml__16_bit_array_rset : _ CI.fatptr -> Unsigned.uint64 -> unit
  = "caml__16_bit_array_rset" 

external caml__17_bit_array_rclear : _ CI.fatptr -> Unsigned.uint64 -> unit
  = "caml__17_bit_array_rclear" 

external caml__18_bit_array_rtoggle : _ CI.fatptr -> Unsigned.uint64 -> unit
  = "caml__18_bit_array_rtoggle" 

external caml__19_bit_array_rassign
  : _ CI.fatptr -> Unsigned.uint64 -> char -> unit
  = "caml__19_bit_array_rassign" 

external caml__20_bit_array_set_region
  : _ CI.fatptr -> Unsigned.uint64 -> Unsigned.uint64 -> unit
  = "caml__20_bit_array_set_region" 

external caml__21_bit_array_clear_region
  : _ CI.fatptr -> Unsigned.uint64 -> Unsigned.uint64 -> unit
  = "caml__21_bit_array_clear_region" 

external caml__22_bit_array_toggle_region
  : _ CI.fatptr -> Unsigned.uint64 -> Unsigned.uint64 -> unit
  = "caml__22_bit_array_toggle_region" 

external caml__23_bit_array_set_all : _ CI.fatptr -> unit
  = "caml__23_bit_array_set_all" 

external caml__24_bit_array_clear_all : _ CI.fatptr -> unit
  = "caml__24_bit_array_clear_all" 

external caml__25_bit_array_toggle_all : _ CI.fatptr -> unit
  = "caml__25_bit_array_toggle_all" 

external caml__26_bit_array_get_word64
  : _ CI.fatptr -> Unsigned.uint64 -> Unsigned.uint64
  = "caml__26_bit_array_get_word64" 

external caml__27_bit_array_get_word32
  : _ CI.fatptr -> Unsigned.uint64 -> Unsigned.uint32
  = "caml__27_bit_array_get_word32" 

external caml__28_bit_array_get_word16
  : _ CI.fatptr -> Unsigned.uint64 -> Unsigned.uint16
  = "caml__28_bit_array_get_word16" 

external caml__29_bit_array_get_word8
  : _ CI.fatptr -> Unsigned.uint64 -> Unsigned.uint8
  = "caml__29_bit_array_get_word8" 

external caml__30_bit_array_get_wordn
  : _ CI.fatptr -> Unsigned.uint64 -> int -> Unsigned.uint64
  = "caml__30_bit_array_get_wordn" 

external caml__31_bit_array_set_word64
  : _ CI.fatptr -> Unsigned.uint64 -> Unsigned.uint64 -> unit
  = "caml__31_bit_array_set_word64" 

external caml__32_bit_array_set_word32
  : _ CI.fatptr -> Unsigned.uint64 -> Unsigned.uint32 -> unit
  = "caml__32_bit_array_set_word32" 

external caml__33_bit_array_set_word16
  : _ CI.fatptr -> Unsigned.uint64 -> Unsigned.uint16 -> unit
  = "caml__33_bit_array_set_word16" 

external caml__34_bit_array_set_word8
  : _ CI.fatptr -> Unsigned.uint64 -> Unsigned.uint8 -> unit
  = "caml__34_bit_array_set_word8" 

external caml__35_bit_array_set_wordn
  : _ CI.fatptr -> Unsigned.uint64 -> Unsigned.uint64 -> int -> unit
  = "caml__35_bit_array_set_wordn" 

external caml__36_bit_array_num_bits_set : _ CI.fatptr -> Unsigned.uint64
  = "caml__36_bit_array_num_bits_set" 

external caml__37_bit_array_num_bits_cleared : _ CI.fatptr -> Unsigned.uint64
  = "caml__37_bit_array_num_bits_cleared" 

external caml__38_bit_array_hamming_distance
  : _ CI.fatptr -> _ CI.fatptr -> Unsigned.uint64
  = "caml__38_bit_array_hamming_distance" 

external caml__39_bit_array_parity : _ CI.fatptr -> char
  = "caml__39_bit_array_parity" 

external caml__40_bit_array_find_next_set_bit
  : _ CI.fatptr -> Unsigned.uint64 -> _ CI.fatptr -> char
  = "caml__40_bit_array_find_next_set_bit" 

external caml__41_bit_array_find_next_clear_bit
  : _ CI.fatptr -> Unsigned.uint64 -> _ CI.fatptr -> char
  = "caml__41_bit_array_find_next_clear_bit" 

external caml__42_bit_array_find_prev_set_bit
  : _ CI.fatptr -> Unsigned.uint64 -> _ CI.fatptr -> char
  = "caml__42_bit_array_find_prev_set_bit" 

external caml__43_bit_array_find_prev_clear_bit
  : _ CI.fatptr -> Unsigned.uint64 -> _ CI.fatptr -> char
  = "caml__43_bit_array_find_prev_clear_bit" 

external caml__44_bit_array_find_first_set_bit
  : _ CI.fatptr -> _ CI.fatptr -> char
  = "caml__44_bit_array_find_first_set_bit" 

external caml__45_bit_array_find_first_clear_bit
  : _ CI.fatptr -> _ CI.fatptr -> char
  = "caml__45_bit_array_find_first_clear_bit" 

external caml__46_bit_array_find_last_set_bit
  : _ CI.fatptr -> _ CI.fatptr -> char
  = "caml__46_bit_array_find_last_set_bit" 

external caml__47_bit_array_find_last_clear_bit
  : _ CI.fatptr -> _ CI.fatptr -> char
  = "caml__47_bit_array_find_last_clear_bit" 

external caml__48_bit_array_sort_bits : _ CI.fatptr -> unit
  = "caml__48_bit_array_sort_bits" 

external caml__49_bit_array_sort_bits_rev : _ CI.fatptr -> unit
  = "caml__49_bit_array_sort_bits_rev" 

external caml__50_bit_array_from_str : _ CI.fatptr -> _ CI.fatptr -> unit
  = "caml__50_bit_array_from_str" 

external caml__51_bit_array_from_substr
  : _ CI.fatptr -> Unsigned.uint64 -> _ CI.fatptr -> Unsigned.size_t ->
    _ CI.fatptr -> _ CI.fatptr -> char -> unit
  = "caml__51_bit_array_from_substr_byte7" "caml__51_bit_array_from_substr" 

external caml__52_bit_array_to_str : _ CI.fatptr -> _ CI.fatptr -> CI.voidp
  = "caml__52_bit_array_to_str" 

external caml__53_bit_array_to_str_rev
  : _ CI.fatptr -> _ CI.fatptr -> CI.voidp = "caml__53_bit_array_to_str_rev" 

external caml__54_bit_array_and
  : _ CI.fatptr -> _ CI.fatptr -> _ CI.fatptr -> unit
  = "caml__54_bit_array_and" 

external caml__55_bit_array_or
  : _ CI.fatptr -> _ CI.fatptr -> _ CI.fatptr -> unit
  = "caml__55_bit_array_or" 

external caml__56_bit_array_xor
  : _ CI.fatptr -> _ CI.fatptr -> _ CI.fatptr -> unit
  = "caml__56_bit_array_xor" 

external caml__57_bit_array_not : _ CI.fatptr -> _ CI.fatptr -> unit
  = "caml__57_bit_array_not" 

external caml__58_bit_array_hash
  : _ CI.fatptr -> Unsigned.uint64 -> Unsigned.uint64
  = "caml__58_bit_array_hash" 

external caml__59_bit_array_random : _ CI.fatptr -> float -> unit
  = "caml__59_bit_array_random" 

external caml__60_bit_array_shuffle : _ CI.fatptr -> unit
  = "caml__60_bit_array_shuffle" 

external caml__61_bit_array_next_permutation : _ CI.fatptr -> unit
  = "caml__61_bit_array_next_permutation" 

type 'a fn = 'a

let foreign : type a b. string -> (a -> b) Ctypes.fn -> (a -> b) =
  fun name t -> match name, t with
| "bit_array_next_permutation",
  CI.Function (CI.Pointer x2, CI.Returns CI.Void) ->
  (fun x1 -> caml__61_bit_array_next_permutation (CI.cptr x1))
| "bit_array_shuffle", CI.Function (CI.Pointer x4, CI.Returns CI.Void) ->
  (fun x3 -> caml__60_bit_array_shuffle (CI.cptr x3))
| "bit_array_random",
  CI.Function
    (CI.Pointer x6, CI.Function (CI.Primitive CI.Float, CI.Returns CI.Void)) ->
  (fun x5 x7 -> caml__59_bit_array_random (CI.cptr x5) x7)
| "bit_array_hash",
  CI.Function
    (CI.Pointer x9,
     CI.Function
       (CI.Primitive CI.Uint64_t, CI.Returns (CI.Primitive CI.Uint64_t))) ->
  (fun x8 x10 -> caml__58_bit_array_hash (CI.cptr x8) x10)
| "bit_array_not",
  CI.Function
    (CI.Pointer x12, CI.Function (CI.Pointer x14, CI.Returns CI.Void)) ->
  (fun x11 x13 -> caml__57_bit_array_not (CI.cptr x11) (CI.cptr x13))
| "bit_array_xor",
  CI.Function
    (CI.Pointer x16,
     CI.Function
       (CI.Pointer x18, CI.Function (CI.Pointer x20, CI.Returns CI.Void))) ->
  (fun x15 x17 x19 ->
    caml__56_bit_array_xor (CI.cptr x15) (CI.cptr x17) (CI.cptr x19))
| "bit_array_or",
  CI.Function
    (CI.Pointer x22,
     CI.Function
       (CI.Pointer x24, CI.Function (CI.Pointer x26, CI.Returns CI.Void))) ->
  (fun x21 x23 x25 ->
    caml__55_bit_array_or (CI.cptr x21) (CI.cptr x23) (CI.cptr x25))
| "bit_array_and",
  CI.Function
    (CI.Pointer x28,
     CI.Function
       (CI.Pointer x30, CI.Function (CI.Pointer x32, CI.Returns CI.Void))) ->
  (fun x27 x29 x31 ->
    caml__54_bit_array_and (CI.cptr x27) (CI.cptr x29) (CI.cptr x31))
| "bit_array_to_str_rev",
  CI.Function
    (CI.Pointer x34,
     CI.Function
       (CI.View {CI.ty = CI.Pointer x37; write = x36; },
        CI.Returns (CI.View {CI.ty = CI.Pointer x38; read = x39; }))) ->
  (fun x33 x35 ->
    x39
    (CI.make_ptr x38
       (caml__53_bit_array_to_str_rev (CI.cptr x33) (CI.cptr (x36 x35)))))
| "bit_array_to_str",
  CI.Function
    (CI.Pointer x41,
     CI.Function
       (CI.View {CI.ty = CI.Pointer x44; write = x43; },
        CI.Returns (CI.View {CI.ty = CI.Pointer x45; read = x46; }))) ->
  (fun x40 x42 ->
    x46
    (CI.make_ptr x45
       (caml__52_bit_array_to_str (CI.cptr x40) (CI.cptr (x43 x42)))))
| "bit_array_from_substr",
  CI.Function
    (CI.Pointer x48,
     CI.Function
       (CI.Primitive CI.Uint64_t,
        CI.Function
          (CI.View {CI.ty = CI.Pointer x52; write = x51; },
           CI.Function
             (CI.Primitive CI.Size_t,
              CI.Function
                (CI.View {CI.ty = CI.Pointer x56; write = x55; },
                 CI.Function
                   (CI.View {CI.ty = CI.Pointer x59; write = x58; },
                    CI.Function (CI.Primitive CI.Char, CI.Returns CI.Void))))))) ->
  (fun x47 x49 x50 x53 x54 x57 x60 ->
    caml__51_bit_array_from_substr (CI.cptr x47) x49 (CI.cptr (x51 x50)) x53
    (CI.cptr (x55 x54)) (CI.cptr (x58 x57)) x60)
| "bit_array_from_str",
  CI.Function
    (CI.Pointer x62,
     CI.Function
       (CI.View {CI.ty = CI.Pointer x65; write = x64; }, CI.Returns CI.Void)) ->
  (fun x61 x63 ->
    caml__50_bit_array_from_str (CI.cptr x61) (CI.cptr (x64 x63)))
| "bit_array_sort_bits_rev", CI.Function (CI.Pointer x67, CI.Returns CI.Void) ->
  (fun x66 -> caml__49_bit_array_sort_bits_rev (CI.cptr x66))
| "bit_array_sort_bits", CI.Function (CI.Pointer x69, CI.Returns CI.Void) ->
  (fun x68 -> caml__48_bit_array_sort_bits (CI.cptr x68))
| "bit_array_find_last_clear_bit",
  CI.Function
    (CI.Pointer x71,
     CI.Function (CI.Pointer x73, CI.Returns (CI.Primitive CI.Char))) ->
  (fun x70 x72 ->
    caml__47_bit_array_find_last_clear_bit (CI.cptr x70) (CI.cptr x72))
| "bit_array_find_last_set_bit",
  CI.Function
    (CI.Pointer x75,
     CI.Function (CI.Pointer x77, CI.Returns (CI.Primitive CI.Char))) ->
  (fun x74 x76 ->
    caml__46_bit_array_find_last_set_bit (CI.cptr x74) (CI.cptr x76))
| "bit_array_find_first_clear_bit",
  CI.Function
    (CI.Pointer x79,
     CI.Function (CI.Pointer x81, CI.Returns (CI.Primitive CI.Char))) ->
  (fun x78 x80 ->
    caml__45_bit_array_find_first_clear_bit (CI.cptr x78) (CI.cptr x80))
| "bit_array_find_first_set_bit",
  CI.Function
    (CI.Pointer x83,
     CI.Function (CI.Pointer x85, CI.Returns (CI.Primitive CI.Char))) ->
  (fun x82 x84 ->
    caml__44_bit_array_find_first_set_bit (CI.cptr x82) (CI.cptr x84))
| "bit_array_find_prev_clear_bit",
  CI.Function
    (CI.Pointer x87,
     CI.Function
       (CI.Primitive CI.Uint64_t,
        CI.Function (CI.Pointer x90, CI.Returns (CI.Primitive CI.Char)))) ->
  (fun x86 x88 x89 ->
    caml__43_bit_array_find_prev_clear_bit (CI.cptr x86) x88 (CI.cptr x89))
| "bit_array_find_prev_set_bit",
  CI.Function
    (CI.Pointer x92,
     CI.Function
       (CI.Primitive CI.Uint64_t,
        CI.Function (CI.Pointer x95, CI.Returns (CI.Primitive CI.Char)))) ->
  (fun x91 x93 x94 ->
    caml__42_bit_array_find_prev_set_bit (CI.cptr x91) x93 (CI.cptr x94))
| "bit_array_find_next_clear_bit",
  CI.Function
    (CI.Pointer x97,
     CI.Function
       (CI.Primitive CI.Uint64_t,
        CI.Function (CI.Pointer x100, CI.Returns (CI.Primitive CI.Char)))) ->
  (fun x96 x98 x99 ->
    caml__41_bit_array_find_next_clear_bit (CI.cptr x96) x98 (CI.cptr x99))
| "bit_array_find_next_set_bit",
  CI.Function
    (CI.Pointer x102,
     CI.Function
       (CI.Primitive CI.Uint64_t,
        CI.Function (CI.Pointer x105, CI.Returns (CI.Primitive CI.Char)))) ->
  (fun x101 x103 x104 ->
    caml__40_bit_array_find_next_set_bit (CI.cptr x101) x103 (CI.cptr x104))
| "bit_array_parity",
  CI.Function (CI.Pointer x107, CI.Returns (CI.Primitive CI.Char)) ->
  (fun x106 -> caml__39_bit_array_parity (CI.cptr x106))
| "bit_array_hamming_distance",
  CI.Function
    (CI.Pointer x109,
     CI.Function (CI.Pointer x111, CI.Returns (CI.Primitive CI.Uint64_t))) ->
  (fun x108 x110 ->
    caml__38_bit_array_hamming_distance (CI.cptr x108) (CI.cptr x110))
| "bit_array_num_bits_cleared",
  CI.Function (CI.Pointer x113, CI.Returns (CI.Primitive CI.Uint64_t)) ->
  (fun x112 -> caml__37_bit_array_num_bits_cleared (CI.cptr x112))
| "bit_array_num_bits_set",
  CI.Function (CI.Pointer x115, CI.Returns (CI.Primitive CI.Uint64_t)) ->
  (fun x114 -> caml__36_bit_array_num_bits_set (CI.cptr x114))
| "bit_array_set_wordn",
  CI.Function
    (CI.Pointer x117,
     CI.Function
       (CI.Primitive CI.Uint64_t,
        CI.Function
          (CI.Primitive CI.Uint64_t,
           CI.Function (CI.Primitive CI.Int, CI.Returns CI.Void)))) ->
  (fun x116 x118 x119 x120 ->
    caml__35_bit_array_set_wordn (CI.cptr x116) x118 x119 x120)
| "bit_array_set_word8",
  CI.Function
    (CI.Pointer x122,
     CI.Function
       (CI.Primitive CI.Uint64_t,
        CI.Function (CI.Primitive CI.Uint8_t, CI.Returns CI.Void))) ->
  (fun x121 x123 x124 ->
    caml__34_bit_array_set_word8 (CI.cptr x121) x123 x124)
| "bit_array_set_word16",
  CI.Function
    (CI.Pointer x126,
     CI.Function
       (CI.Primitive CI.Uint64_t,
        CI.Function (CI.Primitive CI.Uint16_t, CI.Returns CI.Void))) ->
  (fun x125 x127 x128 ->
    caml__33_bit_array_set_word16 (CI.cptr x125) x127 x128)
| "bit_array_set_word32",
  CI.Function
    (CI.Pointer x130,
     CI.Function
       (CI.Primitive CI.Uint64_t,
        CI.Function (CI.Primitive CI.Uint32_t, CI.Returns CI.Void))) ->
  (fun x129 x131 x132 ->
    caml__32_bit_array_set_word32 (CI.cptr x129) x131 x132)
| "bit_array_set_word64",
  CI.Function
    (CI.Pointer x134,
     CI.Function
       (CI.Primitive CI.Uint64_t,
        CI.Function (CI.Primitive CI.Uint64_t, CI.Returns CI.Void))) ->
  (fun x133 x135 x136 ->
    caml__31_bit_array_set_word64 (CI.cptr x133) x135 x136)
| "bit_array_get_wordn",
  CI.Function
    (CI.Pointer x138,
     CI.Function
       (CI.Primitive CI.Uint64_t,
        CI.Function
          (CI.Primitive CI.Int, CI.Returns (CI.Primitive CI.Uint64_t)))) ->
  (fun x137 x139 x140 ->
    caml__30_bit_array_get_wordn (CI.cptr x137) x139 x140)
| "bit_array_get_word8",
  CI.Function
    (CI.Pointer x142,
     CI.Function
       (CI.Primitive CI.Uint64_t, CI.Returns (CI.Primitive CI.Uint8_t))) ->
  (fun x141 x143 -> caml__29_bit_array_get_word8 (CI.cptr x141) x143)
| "bit_array_get_word16",
  CI.Function
    (CI.Pointer x145,
     CI.Function
       (CI.Primitive CI.Uint64_t, CI.Returns (CI.Primitive CI.Uint16_t))) ->
  (fun x144 x146 -> caml__28_bit_array_get_word16 (CI.cptr x144) x146)
| "bit_array_get_word32",
  CI.Function
    (CI.Pointer x148,
     CI.Function
       (CI.Primitive CI.Uint64_t, CI.Returns (CI.Primitive CI.Uint32_t))) ->
  (fun x147 x149 -> caml__27_bit_array_get_word32 (CI.cptr x147) x149)
| "bit_array_get_word64",
  CI.Function
    (CI.Pointer x151,
     CI.Function
       (CI.Primitive CI.Uint64_t, CI.Returns (CI.Primitive CI.Uint64_t))) ->
  (fun x150 x152 -> caml__26_bit_array_get_word64 (CI.cptr x150) x152)
| "bit_array_toggle_all", CI.Function (CI.Pointer x154, CI.Returns CI.Void) ->
  (fun x153 -> caml__25_bit_array_toggle_all (CI.cptr x153))
| "bit_array_clear_all", CI.Function (CI.Pointer x156, CI.Returns CI.Void) ->
  (fun x155 -> caml__24_bit_array_clear_all (CI.cptr x155))
| "bit_array_set_all", CI.Function (CI.Pointer x158, CI.Returns CI.Void) ->
  (fun x157 -> caml__23_bit_array_set_all (CI.cptr x157))
| "bit_array_toggle_region",
  CI.Function
    (CI.Pointer x160,
     CI.Function
       (CI.Primitive CI.Uint64_t,
        CI.Function (CI.Primitive CI.Uint64_t, CI.Returns CI.Void))) ->
  (fun x159 x161 x162 ->
    caml__22_bit_array_toggle_region (CI.cptr x159) x161 x162)
| "bit_array_clear_region",
  CI.Function
    (CI.Pointer x164,
     CI.Function
       (CI.Primitive CI.Uint64_t,
        CI.Function (CI.Primitive CI.Uint64_t, CI.Returns CI.Void))) ->
  (fun x163 x165 x166 ->
    caml__21_bit_array_clear_region (CI.cptr x163) x165 x166)
| "bit_array_set_region",
  CI.Function
    (CI.Pointer x168,
     CI.Function
       (CI.Primitive CI.Uint64_t,
        CI.Function (CI.Primitive CI.Uint64_t, CI.Returns CI.Void))) ->
  (fun x167 x169 x170 ->
    caml__20_bit_array_set_region (CI.cptr x167) x169 x170)
| "bit_array_rassign",
  CI.Function
    (CI.Pointer x172,
     CI.Function
       (CI.Primitive CI.Uint64_t,
        CI.Function (CI.Primitive CI.Char, CI.Returns CI.Void))) ->
  (fun x171 x173 x174 -> caml__19_bit_array_rassign (CI.cptr x171) x173 x174)
| "bit_array_rtoggle",
  CI.Function
    (CI.Pointer x176,
     CI.Function (CI.Primitive CI.Uint64_t, CI.Returns CI.Void)) ->
  (fun x175 x177 -> caml__18_bit_array_rtoggle (CI.cptr x175) x177)
| "bit_array_rclear",
  CI.Function
    (CI.Pointer x179,
     CI.Function (CI.Primitive CI.Uint64_t, CI.Returns CI.Void)) ->
  (fun x178 x180 -> caml__17_bit_array_rclear (CI.cptr x178) x180)
| "bit_array_rset",
  CI.Function
    (CI.Pointer x182,
     CI.Function (CI.Primitive CI.Uint64_t, CI.Returns CI.Void)) ->
  (fun x181 x183 -> caml__16_bit_array_rset (CI.cptr x181) x183)
| "bit_array_rget",
  CI.Function
    (CI.Pointer x185,
     CI.Function
       (CI.Primitive CI.Uint64_t, CI.Returns (CI.Primitive CI.Char))) ->
  (fun x184 x186 -> caml__15_bit_array_rget (CI.cptr x184) x186)
| "bit_array_assign_bit",
  CI.Function
    (CI.Pointer x188,
     CI.Function
       (CI.Primitive CI.Uint64_t,
        CI.Function (CI.Primitive CI.Bool, CI.Returns CI.Void))) ->
  (fun x187 x189 x190 ->
    caml__14_bit_array_assign_bit (CI.cptr x187) x189 x190)
| "bit_array_toggle_bit",
  CI.Function
    (CI.Pointer x192,
     CI.Function (CI.Primitive CI.Uint64_t, CI.Returns CI.Void)) ->
  (fun x191 x193 -> caml__13_bit_array_toggle_bit (CI.cptr x191) x193)
| "bit_array_clear_bit",
  CI.Function
    (CI.Pointer x195,
     CI.Function (CI.Primitive CI.Uint64_t, CI.Returns CI.Void)) ->
  (fun x194 x196 -> caml__12_bit_array_clear_bit (CI.cptr x194) x196)
| "bit_array_set_bit",
  CI.Function
    (CI.Pointer x198,
     CI.Function (CI.Primitive CI.Uint64_t, CI.Returns CI.Void)) ->
  (fun x197 x199 -> caml__11_bit_array_set_bit (CI.cptr x197) x199)
| "bit_array_get_bit",
  CI.Function
    (CI.Pointer x201,
     CI.Function
       (CI.Primitive CI.Uint64_t, CI.Returns (CI.Primitive CI.Bool))) ->
  (fun x200 x202 -> caml__10_bit_array_get_bit (CI.cptr x200) x202)
| "bit_array_ensure_size_critical",
  CI.Function
    (CI.Pointer x204,
     CI.Function (CI.Primitive CI.Uint64_t, CI.Returns CI.Void)) ->
  (fun x203 x205 ->
    caml__9_bit_array_ensure_size_critical (CI.cptr x203) x205)
| "bit_array_resize_critical",
  CI.Function
    (CI.Pointer x207,
     CI.Function (CI.Primitive CI.Uint64_t, CI.Returns CI.Void)) ->
  (fun x206 x208 -> caml__8_bit_array_resize_critical (CI.cptr x206) x208)
| "bit_array_ensure_size",
  CI.Function
    (CI.Pointer x210,
     CI.Function
       (CI.Primitive CI.Uint64_t, CI.Returns (CI.Primitive CI.Char))) ->
  (fun x209 x211 -> caml__7_bit_array_ensure_size (CI.cptr x209) x211)
| "bit_array_resize",
  CI.Function
    (CI.Pointer x213,
     CI.Function
       (CI.Primitive CI.Uint64_t, CI.Returns (CI.Primitive CI.Char))) ->
  (fun x212 x214 -> caml__6_bit_array_resize (CI.cptr x212) x214)
| "bit_array_length",
  CI.Function (CI.Pointer x216, CI.Returns (CI.Primitive CI.Uint64_t)) ->
  (fun x215 -> caml__5_bit_array_length (CI.cptr x215))
| "bit_array_dealloc", CI.Function (CI.Pointer x218, CI.Returns CI.Void) ->
  (fun x217 -> caml__4_bit_array_dealloc (CI.cptr x217))
| "bit_array_alloc",
  CI.Function
    (CI.Pointer x220,
     CI.Function (CI.Primitive CI.Uint64_t, CI.Returns (CI.Pointer x222))) ->
  (fun x219 x221 ->
    CI.make_ptr x222 (caml__3_bit_array_alloc (CI.cptr x219) x221))
| "bit_array_free", CI.Function (CI.Pointer x224, CI.Returns CI.Void) ->
  (fun x223 -> caml__2_bit_array_free (CI.cptr x223))
| "bit_array_create",
  CI.Function (CI.Primitive CI.Uint64_t, CI.Returns (CI.Pointer x226)) ->
  (fun x225 -> CI.make_ptr x226 (caml__1_bit_array_create x225))
| s, _ ->  Printf.ksprintf failwith "No match for %s" s


let foreign_value : type a b. string -> a Ctypes.typ -> a Ctypes.ptr =
  fun name t -> match name, t with
| s, _ ->  Printf.ksprintf failwith "No match for %s" s
