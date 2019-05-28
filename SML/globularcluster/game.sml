(* Game *)

use("helpers.sml");
use("title.sml");

fun gameLoop([]) = "You've reached the end!"
  | gameLoop(planet::remainingList) =
    (printLine(planet); gameLoop(remainingList));

fun start() =
    (* Call function to display title screen *)
    printFile("title_sequence.txt");
    printFile("directions.txt");
    (* Wait for user input *)
    let
        val planets = ["p1", "p2", "p3", "final"]
    in
        gameLoop(planets)
    end;
