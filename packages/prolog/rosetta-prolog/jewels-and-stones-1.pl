:- system:set_prolog_flag(double_quotes,codes) .

count_jewels(STONEs0,JEWELs0,COUNT)
:-
findall(X,(member(X,JEWELs0),member(X,STONEs0)),ALLs) ,
length(ALLs,COUNT)
.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines count_jewels/3 and never calls it; the driver counts the task's two examples (the file sets double_quotes=codes itself).
:- initialization(forall(member(S-J, ["aAAbbbb"-"aA", "ZZ"-"z"]), (count_jewels(S, J, N), format("~s ~s: ~w~n", [S, J, N])))).
