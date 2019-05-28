fun printFile(fileName) =
    let val fileDescriptor = TextIO.openIn fileName
        val dataStream = TextIO.inputAll fileDescriptor
        val _ = TextIO.closeIn fileDescriptor
    in String.tokens (fn c => c = #"\n") dataStream
    end
