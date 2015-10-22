open Core.Std
open Core_bench.Std

let main () =
    let ba_1mm = Obitarray.create 1_000_000L in

    let ba_1 = Obitarray.create 10_000L in
    let ba_2 = Obitarray.create 10_000L in
    Command.run (Bench.make_command [
        Bench.Test.create ~name:"create"
            (fun () -> let _ = Obitarray.create 1000L in ());
        Bench.Test.create ~name:"length"
            (fun () ->
                let _ = Obitarray.length ba_1mm in
                ()
            );
        Bench.Test.create ~name:"set_bit"
            (fun () -> Obitarray.set_bit ba_1mm 500_000L);
        Bench.Test.create ~name:"get_bit"
            (fun () -> Obitarray.get_bit ba_1mm 500_000L);
        Bench.Test.create ~name:"bitwise_and"
            (fun () -> let _ = Obitarray.bitwise_and ba_1 ba_2 in ());
        ]
    )

let () = main()
