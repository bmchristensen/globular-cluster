-module(level).
-export([show/1]).

show(Planet) ->
    if
      Planet == p1 ->
        print_file("levelOne.txt");
      Planet == p2 ->
        print_file("levelTwo.txt");
      Planet == p3 ->
        print_file("levelThree.txt");
      true ->
        print_file("levelFinal.txt")
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
