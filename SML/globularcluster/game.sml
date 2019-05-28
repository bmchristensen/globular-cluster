(* Game *)

use("helpers.sml");

fun gameLoop([]) = "You've reached the end!"
  | gameLoop(planet::remainingList) =
    (
      printLine(planet);
      gameLoop(remainingList)
    );

fun start() =
    (* Call function to display title screen *)
    (
      waitForUser();
      let
          val planets = ["p1", "p2", "p3", "final"]
      in
          gameLoop(planets)
      end
    );
