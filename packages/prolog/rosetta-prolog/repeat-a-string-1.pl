%repeat(Str,Num,Res).
repeat(Str,1,Str).
repeat(Str,Num,Res):-
    Num1 is Num-1,
    repeat(Str,Num1,Res1),
    string_concat(Str, Res1, Res).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines repeat/3 and never calls it; the driver prints the task's "ha" repeated 5 times.
:- initialization((repeat("ha", 5, R), writeln(R))).
