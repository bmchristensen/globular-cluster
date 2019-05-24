-module(gameLoop).
-export([start/0]).
-import(level, [show/0]).

start() ->
    clearScreen(),
    io:format("We are in the game loop. ~n"), % Remove this later!
    level:show().


clearScreen() ->
    io:format("\ec").
