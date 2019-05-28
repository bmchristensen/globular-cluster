fun printFile file =
    let
        val ins = TextIO.openIn file
        fun getLine() = TextIO.inputLine ins
    in
        getLine() before
        TextIO.closeIn ins
    end
