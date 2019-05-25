-module(level).
-export([show/1]).

show(Planet) ->
    if
      Planet == p1 ->
        print_file("ship.txt"),
        print_file("planet.txt");
      true ->
        print_file("planet.txt")
        % io:format("Other Files")
    end.

print_file(Name) ->
    {ok, File} = file:open(Name, [read]),
    get_lines_from(File).

get_lines_from(File) ->
    case io:get_line(File, "") of
      eof  -> file:close(File);
      Line -> io:fwrite("~s", [Line]),
                get_lines_from(File)
    end.
