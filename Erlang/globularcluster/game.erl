-module(game).
-export([start/0]).
-import(title, [show/0]).
-import(gameLoop, [loop/1]).

start() ->
    title:show(),
    waitForStartInput().

waitForStartInput() ->
    io:get_line("\t\tPress <Enter> to start!"),
    PlanetList = [p1, p2, p3, final],
    gameLoop:loop(PlanetList).
