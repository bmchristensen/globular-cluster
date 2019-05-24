-module(level).
-export([show/1]).

show(Planet) ->
    print_file("ship.txt").

print_file(Name) ->
    {ok, File} = file:open(Name, [read]),
    get_lines_from(File).

get_lines_from(File) ->
    case io:get_line(File, "") of
      eof  -> file:close(File);
      Line -> io:fwrite("~s", [Line]),
                get_lines_from(File)
    end.
