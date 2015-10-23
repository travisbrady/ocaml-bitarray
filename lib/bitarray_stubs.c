#include "bit_array.h"
#include "ctypes_cstubs_internals.h"

value caml__1_bit_array_create(value x1)
{
   uint64_t x2 = Uint64_val(x1);
   struct BIT_ARRAY* x5 = bit_array_create(x2);
   return CTYPES_FROM_PTR(x5);
}
value caml__2_bit_array_free(value x6)
{
   struct BIT_ARRAY* x7 = CTYPES_ADDR_OF_FATPTR(x6);
   bit_array_free(x7);
   return Val_unit;
}
value caml__3_bit_array_alloc(value x10, value x9)
{
   struct BIT_ARRAY* x11 = CTYPES_ADDR_OF_FATPTR(x10);
   uint64_t x12 = Uint64_val(x9);
   struct BIT_ARRAY* x15 = bit_array_alloc(x11, x12);
   return CTYPES_FROM_PTR(x15);
}
value caml__4_bit_array_dealloc(value x16)
{
   struct BIT_ARRAY* x17 = CTYPES_ADDR_OF_FATPTR(x16);
   bit_array_dealloc(x17);
   return Val_unit;
}
value caml__5_bit_array_length(value x19)
{
   struct BIT_ARRAY* x20 = CTYPES_ADDR_OF_FATPTR(x19);
   uint64_t x21 = bit_array_length(x20);
   return ctypes_copy_uint64(x21);
}
value caml__6_bit_array_resize(value x23, value x22)
{
   struct BIT_ARRAY* x24 = CTYPES_ADDR_OF_FATPTR(x23);
   uint64_t x25 = Uint64_val(x22);
   char x28 = bit_array_resize(x24, x25);
   return Val_int(x28);
}
value caml__7_bit_array_ensure_size(value x30, value x29)
{
   struct BIT_ARRAY* x31 = CTYPES_ADDR_OF_FATPTR(x30);
   uint64_t x32 = Uint64_val(x29);
   char x35 = bit_array_ensure_size(x31, x32);
   return Val_int(x35);
}
value caml__8_bit_array_resize_critical(value x37, value x36)
{
   struct BIT_ARRAY* x38 = CTYPES_ADDR_OF_FATPTR(x37);
   uint64_t x39 = Uint64_val(x36);
   bit_array_resize_critical(x38, x39);
   return Val_unit;
}
value caml__9_bit_array_ensure_size_critical(value x44, value x43)
{
   struct BIT_ARRAY* x45 = CTYPES_ADDR_OF_FATPTR(x44);
   uint64_t x46 = Uint64_val(x43);
   bit_array_ensure_size_critical(x45, x46);
   return Val_unit;
}
value caml__10_bit_array_get_bit(value x51, value x50)
{
   struct BIT_ARRAY* x52 = CTYPES_ADDR_OF_FATPTR(x51);
   uint64_t x53 = Uint64_val(x50);
   _Bool x56 = bit_array_get_bit(x52, x53);
   return Val_bool(x56);
}
value caml__11_bit_array_set_bit(value x58, value x57)
{
   struct BIT_ARRAY* x59 = CTYPES_ADDR_OF_FATPTR(x58);
   uint64_t x60 = Uint64_val(x57);
   bit_array_set_bit(x59, x60);
   return Val_unit;
}
value caml__12_bit_array_clear_bit(value x65, value x64)
{
   struct BIT_ARRAY* x66 = CTYPES_ADDR_OF_FATPTR(x65);
   uint64_t x67 = Uint64_val(x64);
   bit_array_clear_bit(x66, x67);
   return Val_unit;
}
value caml__13_bit_array_toggle_bit(value x72, value x71)
{
   struct BIT_ARRAY* x73 = CTYPES_ADDR_OF_FATPTR(x72);
   uint64_t x74 = Uint64_val(x71);
   bit_array_toggle_bit(x73, x74);
   return Val_unit;
}
value caml__14_bit_array_assign_bit(value x80, value x79, value x78)
{
   struct BIT_ARRAY* x81 = CTYPES_ADDR_OF_FATPTR(x80);
   uint64_t x82 = Uint64_val(x79);
   _Bool x85 = Bool_val(x78);
   bit_array_assign_bit(x81, x82, x85);
   return Val_unit;
}
value caml__15_bit_array_rget(value x90, value x89)
{
   struct BIT_ARRAY* x91 = CTYPES_ADDR_OF_FATPTR(x90);
   uint64_t x92 = Uint64_val(x89);
   char x95 = bit_array_rget(x91, x92);
   return Val_int(x95);
}
value caml__16_bit_array_rset(value x97, value x96)
{
   struct BIT_ARRAY* x98 = CTYPES_ADDR_OF_FATPTR(x97);
   uint64_t x99 = Uint64_val(x96);
   bit_array_rset(x98, x99);
   return Val_unit;
}
value caml__17_bit_array_rclear(value x104, value x103)
{
   struct BIT_ARRAY* x105 = CTYPES_ADDR_OF_FATPTR(x104);
   uint64_t x106 = Uint64_val(x103);
   bit_array_rclear(x105, x106);
   return Val_unit;
}
value caml__18_bit_array_rtoggle(value x111, value x110)
{
   struct BIT_ARRAY* x112 = CTYPES_ADDR_OF_FATPTR(x111);
   uint64_t x113 = Uint64_val(x110);
   bit_array_rtoggle(x112, x113);
   return Val_unit;
}
value caml__19_bit_array_rassign(value x119, value x118, value x117)
{
   struct BIT_ARRAY* x120 = CTYPES_ADDR_OF_FATPTR(x119);
   uint64_t x121 = Uint64_val(x118);
   int x124 = Int_val(x117);
   bit_array_rassign(x120, x121, (char)x124);
   return Val_unit;
}
value caml__20_bit_array_set_region(value x130, value x129, value x128)
{
   struct BIT_ARRAY* x131 = CTYPES_ADDR_OF_FATPTR(x130);
   uint64_t x132 = Uint64_val(x129);
   uint64_t x135 = Uint64_val(x128);
   bit_array_set_region(x131, x132, x135);
   return Val_unit;
}
value caml__21_bit_array_clear_region(value x141, value x140, value x139)
{
   struct BIT_ARRAY* x142 = CTYPES_ADDR_OF_FATPTR(x141);
   uint64_t x143 = Uint64_val(x140);
   uint64_t x146 = Uint64_val(x139);
   bit_array_clear_region(x142, x143, x146);
   return Val_unit;
}
value caml__22_bit_array_toggle_region(value x152, value x151, value x150)
{
   struct BIT_ARRAY* x153 = CTYPES_ADDR_OF_FATPTR(x152);
   uint64_t x154 = Uint64_val(x151);
   uint64_t x157 = Uint64_val(x150);
   bit_array_toggle_region(x153, x154, x157);
   return Val_unit;
}
value caml__23_bit_array_set_all(value x161)
{
   struct BIT_ARRAY* x162 = CTYPES_ADDR_OF_FATPTR(x161);
   bit_array_set_all(x162);
   return Val_unit;
}
value caml__24_bit_array_clear_all(value x164)
{
   struct BIT_ARRAY* x165 = CTYPES_ADDR_OF_FATPTR(x164);
   bit_array_clear_all(x165);
   return Val_unit;
}
value caml__25_bit_array_toggle_all(value x167)
{
   struct BIT_ARRAY* x168 = CTYPES_ADDR_OF_FATPTR(x167);
   bit_array_toggle_all(x168);
   return Val_unit;
}
value caml__26_bit_array_get_word64(value x171, value x170)
{
   struct BIT_ARRAY* x172 = CTYPES_ADDR_OF_FATPTR(x171);
   uint64_t x173 = Uint64_val(x170);
   uint64_t x176 = bit_array_get_word64(x172, x173);
   return ctypes_copy_uint64(x176);
}
value caml__27_bit_array_get_word32(value x178, value x177)
{
   struct BIT_ARRAY* x179 = CTYPES_ADDR_OF_FATPTR(x178);
   uint64_t x180 = Uint64_val(x177);
   uint32_t x183 = bit_array_get_word32(x179, x180);
   return ctypes_copy_uint32(x183);
}
value caml__28_bit_array_get_word16(value x185, value x184)
{
   struct BIT_ARRAY* x186 = CTYPES_ADDR_OF_FATPTR(x185);
   uint64_t x187 = Uint64_val(x184);
   uint16_t x190 = bit_array_get_word16(x186, x187);
   return ctypes_copy_uint16(x190);
}
value caml__29_bit_array_get_word8(value x192, value x191)
{
   struct BIT_ARRAY* x193 = CTYPES_ADDR_OF_FATPTR(x192);
   uint64_t x194 = Uint64_val(x191);
   uint8_t x197 = bit_array_get_word8(x193, x194);
   return ctypes_copy_uint8(x197);
}
value caml__30_bit_array_get_wordn(value x200, value x199, value x198)
{
   struct BIT_ARRAY* x201 = CTYPES_ADDR_OF_FATPTR(x200);
   uint64_t x202 = Uint64_val(x199);
   int x205 = Int_val(x198);
   uint64_t x208 = bit_array_get_wordn(x201, x202, x205);
   return ctypes_copy_uint64(x208);
}
value caml__31_bit_array_set_word64(value x211, value x210, value x209)
{
   struct BIT_ARRAY* x212 = CTYPES_ADDR_OF_FATPTR(x211);
   uint64_t x213 = Uint64_val(x210);
   uint64_t x216 = Uint64_val(x209);
   bit_array_set_word64(x212, x213, x216);
   return Val_unit;
}
value caml__32_bit_array_set_word32(value x222, value x221, value x220)
{
   struct BIT_ARRAY* x223 = CTYPES_ADDR_OF_FATPTR(x222);
   uint64_t x224 = Uint64_val(x221);
   uint32_t x227 = Uint32_val(x220);
   bit_array_set_word32(x223, x224, x227);
   return Val_unit;
}
value caml__33_bit_array_set_word16(value x233, value x232, value x231)
{
   struct BIT_ARRAY* x234 = CTYPES_ADDR_OF_FATPTR(x233);
   uint64_t x235 = Uint64_val(x232);
   uint16_t x238 = Uint16_val(x231);
   bit_array_set_word16(x234, x235, x238);
   return Val_unit;
}
value caml__34_bit_array_set_word8(value x244, value x243, value x242)
{
   struct BIT_ARRAY* x245 = CTYPES_ADDR_OF_FATPTR(x244);
   uint64_t x246 = Uint64_val(x243);
   uint8_t x249 = Uint8_val(x242);
   bit_array_set_word8(x245, x246, x249);
   return Val_unit;
}
value caml__35_bit_array_set_wordn(value x256, value x255, value x254,
                                   value x253)
{
   struct BIT_ARRAY* x257 = CTYPES_ADDR_OF_FATPTR(x256);
   uint64_t x258 = Uint64_val(x255);
   uint64_t x261 = Uint64_val(x254);
   int x264 = Int_val(x253);
   bit_array_set_wordn(x257, x258, x261, x264);
   return Val_unit;
}
value caml__36_bit_array_num_bits_set(value x268)
{
   struct BIT_ARRAY* x269 = CTYPES_ADDR_OF_FATPTR(x268);
   uint64_t x270 = bit_array_num_bits_set(x269);
   return ctypes_copy_uint64(x270);
}
value caml__37_bit_array_num_bits_cleared(value x271)
{
   struct BIT_ARRAY* x272 = CTYPES_ADDR_OF_FATPTR(x271);
   uint64_t x273 = bit_array_num_bits_cleared(x272);
   return ctypes_copy_uint64(x273);
}
value caml__38_bit_array_hamming_distance(value x275, value x274)
{
   struct BIT_ARRAY* x276 = CTYPES_ADDR_OF_FATPTR(x275);
   struct BIT_ARRAY* x277 = CTYPES_ADDR_OF_FATPTR(x274);
   uint64_t x278 = bit_array_hamming_distance(x276, x277);
   return ctypes_copy_uint64(x278);
}
value caml__39_bit_array_parity(value x279)
{
   struct BIT_ARRAY* x280 = CTYPES_ADDR_OF_FATPTR(x279);
   char x281 = bit_array_parity(x280);
   return Val_int(x281);
}
value caml__40_bit_array_find_next_set_bit(value x284, value x283,
                                           value x282)
{
   struct BIT_ARRAY* x285 = CTYPES_ADDR_OF_FATPTR(x284);
   uint64_t x286 = Uint64_val(x283);
   uint64_t* x289 = CTYPES_ADDR_OF_FATPTR(x282);
   char x290 = bit_array_find_next_set_bit(x285, x286, x289);
   return Val_int(x290);
}
value caml__41_bit_array_find_next_clear_bit(value x293, value x292,
                                             value x291)
{
   struct BIT_ARRAY* x294 = CTYPES_ADDR_OF_FATPTR(x293);
   uint64_t x295 = Uint64_val(x292);
   uint64_t* x298 = CTYPES_ADDR_OF_FATPTR(x291);
   char x299 = bit_array_find_next_clear_bit(x294, x295, x298);
   return Val_int(x299);
}
value caml__42_bit_array_find_prev_set_bit(value x302, value x301,
                                           value x300)
{
   struct BIT_ARRAY* x303 = CTYPES_ADDR_OF_FATPTR(x302);
   uint64_t x304 = Uint64_val(x301);
   uint64_t* x307 = CTYPES_ADDR_OF_FATPTR(x300);
   char x308 = bit_array_find_prev_set_bit(x303, x304, x307);
   return Val_int(x308);
}
value caml__43_bit_array_find_prev_clear_bit(value x311, value x310,
                                             value x309)
{
   struct BIT_ARRAY* x312 = CTYPES_ADDR_OF_FATPTR(x311);
   uint64_t x313 = Uint64_val(x310);
   uint64_t* x316 = CTYPES_ADDR_OF_FATPTR(x309);
   char x317 = bit_array_find_prev_clear_bit(x312, x313, x316);
   return Val_int(x317);
}
value caml__44_bit_array_find_first_set_bit(value x319, value x318)
{
   struct BIT_ARRAY* x320 = CTYPES_ADDR_OF_FATPTR(x319);
   uint64_t* x321 = CTYPES_ADDR_OF_FATPTR(x318);
   char x322 = bit_array_find_first_set_bit(x320, x321);
   return Val_int(x322);
}
value caml__45_bit_array_find_first_clear_bit(value x324, value x323)
{
   struct BIT_ARRAY* x325 = CTYPES_ADDR_OF_FATPTR(x324);
   uint64_t* x326 = CTYPES_ADDR_OF_FATPTR(x323);
   char x327 = bit_array_find_first_clear_bit(x325, x326);
   return Val_int(x327);
}
value caml__46_bit_array_find_last_set_bit(value x329, value x328)
{
   struct BIT_ARRAY* x330 = CTYPES_ADDR_OF_FATPTR(x329);
   uint64_t* x331 = CTYPES_ADDR_OF_FATPTR(x328);
   char x332 = bit_array_find_last_set_bit(x330, x331);
   return Val_int(x332);
}
value caml__47_bit_array_find_last_clear_bit(value x334, value x333)
{
   struct BIT_ARRAY* x335 = CTYPES_ADDR_OF_FATPTR(x334);
   uint64_t* x336 = CTYPES_ADDR_OF_FATPTR(x333);
   char x337 = bit_array_find_last_clear_bit(x335, x336);
   return Val_int(x337);
}
value caml__48_bit_array_sort_bits(value x338)
{
   struct BIT_ARRAY* x339 = CTYPES_ADDR_OF_FATPTR(x338);
   bit_array_sort_bits(x339);
   return Val_unit;
}
value caml__49_bit_array_sort_bits_rev(value x341)
{
   struct BIT_ARRAY* x342 = CTYPES_ADDR_OF_FATPTR(x341);
   bit_array_sort_bits_rev(x342);
   return Val_unit;
}
value caml__50_bit_array_from_str(value x345, value x344)
{
   struct BIT_ARRAY* x346 = CTYPES_ADDR_OF_FATPTR(x345);
   char* x347 = CTYPES_ADDR_OF_FATPTR(x344);
   bit_array_from_str(x346, x347);
   return Val_unit;
}
value caml__51_bit_array_from_substr(value x355, value x354, value x353,
                                     value x352, value x351, value x350,
                                     value x349)
{
   struct BIT_ARRAY* x356 = CTYPES_ADDR_OF_FATPTR(x355);
   uint64_t x357 = Uint64_val(x354);
   char* x360 = CTYPES_ADDR_OF_FATPTR(x353);
   size_t x361 = ctypes_size_t_val(x352);
   char* x364 = CTYPES_ADDR_OF_FATPTR(x351);
   char* x365 = CTYPES_ADDR_OF_FATPTR(x350);
   int x366 = Int_val(x349);
   bit_array_from_substr(x356, x357, x360, x361, x364, x365, (char)x366);
   return Val_unit;
}
value caml__51_bit_array_from_substr_byte7(value* argv, int argc)
{
   value x370 = argv[6];
   value x371 = argv[5];
   value x372 = argv[4];
   value x373 = argv[3];
   value x374 = argv[2];
   value x375 = argv[1];
   value x376 = argv[0];
   return
     caml__51_bit_array_from_substr(x376, x375, x374, x373, x372, x371, x370);
}
value caml__52_bit_array_to_str(value x378, value x377)
{
   struct BIT_ARRAY* x379 = CTYPES_ADDR_OF_FATPTR(x378);
   char* x380 = CTYPES_ADDR_OF_FATPTR(x377);
   char* x381 = bit_array_to_str(x379, x380);
   return CTYPES_FROM_PTR(x381);
}
value caml__53_bit_array_to_str_rev(value x383, value x382)
{
   struct BIT_ARRAY* x384 = CTYPES_ADDR_OF_FATPTR(x383);
   char* x385 = CTYPES_ADDR_OF_FATPTR(x382);
   char* x386 = bit_array_to_str_rev(x384, x385);
   return CTYPES_FROM_PTR(x386);
}
value caml__54_bit_array_and(value x389, value x388, value x387)
{
   struct BIT_ARRAY* x390 = CTYPES_ADDR_OF_FATPTR(x389);
   struct BIT_ARRAY* x391 = CTYPES_ADDR_OF_FATPTR(x388);
   struct BIT_ARRAY* x392 = CTYPES_ADDR_OF_FATPTR(x387);
   bit_array_and(x390, x391, x392);
   return Val_unit;
}
value caml__55_bit_array_or(value x396, value x395, value x394)
{
   struct BIT_ARRAY* x397 = CTYPES_ADDR_OF_FATPTR(x396);
   struct BIT_ARRAY* x398 = CTYPES_ADDR_OF_FATPTR(x395);
   struct BIT_ARRAY* x399 = CTYPES_ADDR_OF_FATPTR(x394);
   bit_array_or(x397, x398, x399);
   return Val_unit;
}
value caml__56_bit_array_xor(value x403, value x402, value x401)
{
   struct BIT_ARRAY* x404 = CTYPES_ADDR_OF_FATPTR(x403);
   struct BIT_ARRAY* x405 = CTYPES_ADDR_OF_FATPTR(x402);
   struct BIT_ARRAY* x406 = CTYPES_ADDR_OF_FATPTR(x401);
   bit_array_xor(x404, x405, x406);
   return Val_unit;
}
value caml__57_bit_array_not(value x409, value x408)
{
   struct BIT_ARRAY* x410 = CTYPES_ADDR_OF_FATPTR(x409);
   struct BIT_ARRAY* x411 = CTYPES_ADDR_OF_FATPTR(x408);
   bit_array_not(x410, x411);
   return Val_unit;
}
value caml__58_bit_array_hash(value x414, value x413)
{
   struct BIT_ARRAY* x415 = CTYPES_ADDR_OF_FATPTR(x414);
   uint64_t x416 = Uint64_val(x413);
   uint64_t x419 = bit_array_hash(x415, x416);
   return ctypes_copy_uint64(x419);
}
value caml__59_bit_array_random(value x421, value x420)
{
   struct BIT_ARRAY* x422 = CTYPES_ADDR_OF_FATPTR(x421);
   double x423 = Double_val(x420);
   bit_array_random(x422, (float)x423);
   return Val_unit;
}
value caml__60_bit_array_shuffle(value x427)
{
   struct BIT_ARRAY* x428 = CTYPES_ADDR_OF_FATPTR(x427);
   bit_array_shuffle(x428);
   return Val_unit;
}
value caml__61_bit_array_next_permutation(value x430)
{
   struct BIT_ARRAY* x431 = CTYPES_ADDR_OF_FATPTR(x430);
   bit_array_next_permutation(x431);
   return Val_unit;
}
