-module(gameLoop).
-export([loop/1]).
-import(level, [show/1]).

loop([]) ->
    io:format("You made it to the end!~n");
loop([Head|Tail]) ->
    clearScreen(),
    io:format("Current Planet: ~w~n", [Head]),
    io:format("Future Planets: ~p~n", [Tail]),
    level:show(Head),
    io:get_line("\t\tPress <Enter> to continue!"),
    loop(Tail).


clearScreen() ->
    io:format("\ec").
