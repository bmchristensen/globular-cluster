-module(gameLoop).
-export([start/0]).

start() ->
    clearScreen(),
    io:format("We are in the game loop. ~n").

clearScreen() ->
    io:format("\ec").
