-module(title).
-export([show/0]).

show() ->
    print_file("title_sequence.txt").

print_file(Name) ->
    {ok, Device} = file:open(Name, [read]),
    get_lines(Device).

get_lines(Device) ->
    case io:get_line(Device, "") of
        eof  -> file:close(Device);
        Line -> io:fwrite("~s", [Line]),
                    get_lines(Device)
    end.
