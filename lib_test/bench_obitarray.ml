open Core.Std
open Core_bench.Std

let main () =
    let ba_1mm = Bitarray.create 1_000_000L in

    let ba_1 = Bitarray.create 10_000L in
    let ba_2 = Bitarray.create 10_000L in
    Command.run (Bench.make_command [
        Bench.Test.create ~name:"create"
            (fun () -> let _ = Bitarray.create 10_000L in ());
        Bench.Test.create ~name:"length"
            (fun () -> let _ = Bitarray.length ba_1mm in ());
        Bench.Test.create ~name:"set_bit"
            (fun () -> Bitarray.set_bit ba_1mm 500_000L);
        Bench.Test.create ~name:"get_bit"
            (fun () -> Bitarray.get_bit ba_1mm 500_000L);
        Bench.Test.create ~name:"num_bits_set"
            (fun () -> let _ = Bitarray.num_bits_set ba_1 in ());
        Bench.Test.create ~name:"bitwise_and"
            (fun () -> let _ = Bitarray.bitwise_and ba_1 ba_2 in ());
        Bench.Test.create ~name:"toggle_all"
            (fun () -> Bitarray.toggle_all ba_1);
        ]
    )

let () = main()
