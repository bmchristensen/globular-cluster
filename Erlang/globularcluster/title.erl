-module(title).
-export([show/0]).

show() ->
    print_file("title_sequence.txt").

print_file(Name) ->
    {ok, File} = file:open(Name, [read]),
    get_lines_from(File).

get_lines_from(File) ->
    case io:get_line(File, "") of
        eof  -> file:close(File);
        Line -> io:fwrite("~s", [Line]),
                    get_lines_from(File)
    end.
