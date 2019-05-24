-module(game).
-export([start/0]).
-import(title, [show/1]).

start() ->
    title:show(),
    waitForStartInput().

waitForStartInput() ->
    io:get_line("Press <Enter> to start!"),
    startGame().

startGame() ->
    io:format("Game has started. ~n").
