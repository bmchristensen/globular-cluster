<pre>
   _____ _      ____  ____  _    _ _               _____
  / ____| |    / __ \|  _ \| |  | | |        /\   |  __ \
 | |  __| |   | |  | | |_) | |  | | |       /  \  | |__) |
 | | |_ | |   | |  | |  _ <| |  | | |      / /\ \ |  _  /
 | |__| | |___| |__| | |_) | |__| | |____ / ____ \| | \ \
  \_____|______\____/|____/ \____/|______/_/    \_\_|  \_\
          _____ _     _    _  _____ _______ ______ _____
         / ____| |   | |  | |/ ____|__   __|  ____|  __ \
        | |    | |   | |  | | (___    | |  | |__  | |__) |
        | |    | |   | |  | |\___ \   | |  |  __| |  _  /
        | |____| |___| |__| |____) |  | |  | |____| | \ \
         \_____|______\____/|_____/   |_|  |______|_|  \_\
</pre>
A simple command line game in three languages.

You meet a Replicant, near death. You learn there were originally four of them who stole a ship to escape the outer reaches of the galaxy. The others are dead. This last one, as if embodying the spirit of Rutger Hauer, begins telling you about their travels and adventures. He says, "I’ve seen things you people wouldn’t believe. Attack ships on fire off the shoulder of Orion. I watched C-beams glitter in the dark near Tannhauser Gate. All these moments will be lost forever. Like tears in the rain."

Perhaps the ship is nearby...perhaps stealing a stolen ship isn't as bad as stealing it in the first place? What do C-beams look like?

by,

Brian Christensen<br>
Ben Nesbit

# Setup and Requirements

Version check:<br>
    $ ruby --version<br>
    $ sml<br>
    $ erl

For Ruby, you will need a version 2 release. Anything 2.X or 2.X.X.<br>
Any psuedo-recent Erlang and SML release will work.

# To Get Things Running

## Ruby
<pre>
root
 |___Ruby
      |___globularcluster
                |
            level.rb
                |
             main.rb
</pre>
From the command line, navigate to the 'Ruby' directory and then into the 'globularcluster' directory (there won't be quotes on the actual director names). Then, execute the main.rb file:

  $ ruby main.rb

## Erlang
<pre>
root
 |___Ruby
 |     |___globularcluster
 |               |
 |           level.rb
 |               |
 |            main.rb
 |               |
 |             <etc>
 |___Erlang
       |___globularcluster
                 |
             level.erl
                 |
             title.erl
                 |
               <etc>
</pre>
From the command line, navigate to the 'Erlang' directory and then into the 'globularcluster' directory (there won't be quotes on the actual directory names). Once inside the application directory, spin up an instance of the Erlang virtual machine:

   $ erl

From inside the erlang virtual machine, the application modules must be compiled. Execute the following commands:

   Eshell V10.2.4 (abort with ^G)<br>
   1> c(game).<br>
   2> c(gameLoop).<br>
   3> c(level).<br>
   4> c(title).
   
   Don't forget the period <.> after each command! Each compilation command is executed by pressing <ENTER>.<br>
   The Erlang VM will tell you if it's correct:<br>
      1> c(game).<br>
      {ok,game}    -> this is the Erlang response to successful compilation<br>
   
If no changes are made to the source files for the application, the compilation process will not have to be repeated.<br>

Finally, boot up the game with the following command:

   5> game:start().
   
## SML-NJ

#

CS381 - Project 1 Proposal

This document details a simple project implemented in three languages. As a means to explore language fundamentals in multiple paradigms, Erlang and ML were selected for functional and Ruby for object-oriented. As an aside, regarding Erlang, its creator Joe Armstrong passed recently: Good night, sweet prince: https://en.wikipedia.org/wiki/Joe_Armstrong_(programmer)

The primary resources chosen include two popular books, Learn You Some Erlang for Great Good! by Fred Herbert (https://learnyousomeerlang.com/introduction) and Introducing Erlang: Getting Started in Functional Programming by Simon St. Laurent (https://github.com/oreillymedia/etudes-for-erlang). Additional resources include the Erlang documentation at http://erlang.org/doc/ and a linear algebra book by David Lay, Linear Algebra and its Applications.

The main features of Erlang include concurrency and resilience. This is done through recursion, message sending, pattern matching, and establishing pathways for data rather than telling the data where to go. Recursion and pattern matching are key aspects of functional programming paradigm, as well as single bound variables.

One big difference from ML is that it is impossible to rebind a variable in Erlang. If you say that x = 5, then if you try to say x = 6 there will be an error (x is NOT rebound), because 5 != 6.
“Variables in Erlang do not vary. You’re not supposed to program defensively. Processes are really, really, cheap, and you can have thousands of them or even millions, if you feel it. Oh, and then there is the strange syntax. Erlang doesn’t look like Java; there are no methods or classes and no objects. And wait a moment . . . even the equals sign doesn’t mean “equals” — it means “match this pattern.” (Herbert, XX)

Erlang bullets:
Appeals to those looking for concurrency and parallelism
Distributed computing
Changing the value of any variable is strictly forbidden!
Like math
y = 2
x = y + 3
x = 2 + 3
x = 5
then,
x = 5 + 1
x = x
Therefore, 5 = 6 (this is dishonest and Erlang is an honest language)
Referential transparency = concept of functions always returning the same result for the same parameter
Actor model
Actors => processes
Erlang is good at large software for server use (web servers, bidding and distributed database implementations, coupled with other languages, AI
The application is a kind of linear algebra calculator that will create a reduced row echelon form of a given system of linear equations. The echelon matrix is defined by the following properties:
All nonzero rows are above any rows of all zeros.
Each leading entry of a row is in a column to the right of the leading entry of the row above it.
All entries in a column below a leading entry are zeros.
If a matrix in echelon form satisfies the following additional conditions, then it is in reduced echelon form (or reduced row echelon form):
The leading entry in each nonzero row is 1.
Each leading 1 is the only nonzero entry in its column.

That this application requires use of lists, has a concrete algorithm (definition of the form), and requires manipulation of a variety of aspects of the lists makes this an ideal candidate to demonstrate the strengths and weaknesses of both functional and object oriented languages. Additionally, the applications of linear algebra are vast in the realm of computer science. This is not necessarily a strong reason to implement this for the context of the project, but perhaps is reason for intrigue.

Erlang ASCII art credit:
Spaceship - Unknown author, https://textart.io/art/HO6I36Hyhg2OyM2kcTSorgeF/spaceship-rocket
Alien - Unknown author, https://www.asciiart.eu/space/aliens
Planets - Unknown author, https://www.asciiart.eu/space/planets
