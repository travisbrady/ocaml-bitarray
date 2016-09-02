
let test_length () =
    let b = Bitarray.create 10L in
    Alcotest.(check int64) "len 10" 10L (Bitarray.length b)

let test_get_bit () =
    let b = Bitarray.create 10L in
    Alcotest.(check bool) "unset" false (Bitarray.get_bit b 3L)

let test_set_bit () =
    let b = Bitarray.create 10L in
    Bitarray.set_bit b 3L;
    Alcotest.(check bool) "set" true (Bitarray.get_bit b 3L)

let test_clear_bit () =
    let b = Bitarray.create 10L in
    Bitarray.set_bit b 5L;
    Bitarray.clear_bit b 5L;
    Alcotest.(check bool) "clear" false (Bitarray.get_bit b 5L)

let test_set_all () =
    let b = Bitarray.create 10L in
    Bitarray.set_all b;
    Alcotest.(check int64) "num bit set" 10L (Bitarray.num_bits_set b)


let test_set = [
    "length", `Quick, test_length;
    "get_bit", `Quick, test_get_bit;
    "set_bit", `Quick, test_set_bit;
    "clear_bit", `Quick, test_clear_bit;
    "set_all", `Quick, test_set_all
]

let () =
  Alcotest.run "My first test" [
    "test_set", test_set;
  ]
