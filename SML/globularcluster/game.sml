(* Game *)

fun gameLoop([]) = "You've reached the end!"
  | gameLoop(planet::remainingList) =
    ((print planet; print "\n"); gameLoop(remainingList));

fun start() =
    (* Call function to display title screen *)
    (* Wait for user input *)
    let
        val planets = ["p1", "p2", "p3", "final"]
    in
        gameLoop(planets)
    end;
