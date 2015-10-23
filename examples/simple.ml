let printf = Printf.printf

let () =
    let b = Obitarray.create 1_000L in
    printf "len: %Ld\n" (Obitarray.length b);
    Obitarray.set_bit b 500L;
    printf "should be set: %b\n" (Obitarray.get_bit b 500L);
    printf "should be 1: %Ld\n" (Obitarray.num_bits_set b);
    Obitarray.toggle_all b;
    printf "should be 999: %Ld\n" (Obitarray.num_bits_set b)
