(* Helper Functions *)

fun printLine (line) =
    (
      print line;
      print "\n"
    );

fun waitForUser() =
    (
      printLine("Press <enter> to start!");
      TextIO.inputLine TextIO.stdIn
    );
