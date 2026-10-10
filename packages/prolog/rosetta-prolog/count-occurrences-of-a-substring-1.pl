count_substring(String, Sub, Total) :-
    count_substring(String, Sub, 0, Total).

count_substring(String, Sub, Count, Total) :-
    ( substring_rest(String, Sub, Rest)
    ->
        succ(Count, NextCount),
        count_substring(Rest, Sub, NextCount, Total)
    ;
        Total = Count
    ).

substring_rest(String, Sub, Rest) :-
    sub_string(String, Before, Length, Remain, Sub),
    DropN is Before + Length,
    sub_string(String, DropN, Remain, 0, Rest).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines count_substring/3 and never calls it; the driver counts the task's two examples.
:- initialization(forall(member(S-Sub, ["the three truths"-"th", "ababababab"-"abab"]), (count_substring(S, Sub, N), format("~w~n", [N])))).
