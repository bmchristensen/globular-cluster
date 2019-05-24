-module(game).
-compile(export_all).
-import(title, [show/1]).

start() ->
    title:show().
