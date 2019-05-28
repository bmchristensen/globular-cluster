<<<<<<< HEAD
fun printFile file =
    let
        val ins = TextIO.openIn file
        fun getLine() = TextIO.inputLine ins
    in
        getLine() before
        TextIO.closeIn ins
=======
(* Title *)

fun readTitle(filename) =
    let val fileBuffer = TextIO.openIn filename
        val title = TextIO.inputAll fileBuffer
        val _ = TextIO.closeIn fileBuffer
    in String.tokens (fn c => c = #"\n") title
>>>>>>> 0c1439b644f51e92faa1253fe85b0c82449d44ad
    end
