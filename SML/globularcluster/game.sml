(* Game *)

use("helpers.sml");

fun gameLoop([]) = "You've reached the end!"
  | gameLoop(planet::remainingList) =
    (
      printLine(planet);
      waitForUser("");
      gameLoop(remainingList)
    );

fun start() =
    (
      printFile("title.txt");
      printFile("directions.txt");
      waitForUser("start");
      let
          val planets = ["p1", "p2", "p3", "final"]
      in
          gameLoop(planets)
      end
    );
