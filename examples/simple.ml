let printf = Printf.printf

let () =
    printf "simple\n%!";
    let b = Obitarray.create 100L in
    printf "len: %Ld\n" (Obitarray.length b)
