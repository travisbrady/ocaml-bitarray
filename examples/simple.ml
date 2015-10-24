let printf = Printf.printf

let () =
    let b = Bitarray.create 1_000L in
    printf "len: %Ld\n" (Bitarray.length b);
    Bitarray.set_bit b 500L;
    printf "should be set: %b\n" (Bitarray.get_bit b 500L);
    printf "should be 1: %Ld\n" (Bitarray.num_bits_set b);
    Bitarray.toggle_all b;
    printf "should be 999: %Ld\n" (Bitarray.num_bits_set b)
