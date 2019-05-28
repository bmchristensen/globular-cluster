(* Helper Functions *)

fun printLine (line) =
    (
      print line;
      print "\n"
    );

fun waitForUser(gameState) =
    if gameState = "start" then
      (
        printLine("Press <enter> to start!");
        TextIO.inputLine TextIO.stdIn
      )
    else
      (
        printLine("Press <enter> to continue!");
        TextIO.inputLine TextIO.stdIn
      );
