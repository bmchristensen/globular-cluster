(* Title *)

fun readTitle(filename) =
    let val fileBuffer = TextIO.openIn filename
        val title = TextIO.inputAll fileBuffer
        val _ = TextIO.closeIn fileBuffer
    in String.tokens (fn c => c = #"\n") title
    end
