-module(game).
-compile(export_all).
-import(title, [show/1]).

start() ->
    title:show(),
    waitForStartInput().

waitForStartInput() ->
    Term = io:get_line("Press <Enter> to start!"),
    startGame().

startGame() ->
    io:format("Game has started. ~n").
