(* Helper Functions *)

fun printLine(line) =
    (
      print line;
      print "\n"
    );

fun printFile(fileName) =
    let val fileDescriptor = TextIO.openIn fileName
        val dataStream = TextIO.inputAll fileDescriptor
        val _ = TextIO.closeIn fileDescriptor
    in String.tokens (fn c => c = #"\n") dataStream
    end;

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
