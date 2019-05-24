-module(game).
-export([start/0]).
-import(title, [show/0]).
-import(gameLoop, [test/0]).

start() ->
    title:show(),
    waitForStartInput().

waitForStartInput() ->
    io:get_line("\t\tPress <Enter> to start!"),
    gameLoop:start().
