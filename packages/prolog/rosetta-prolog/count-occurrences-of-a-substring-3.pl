:- system:set_prolog_flag(double_quotes,chars) .

occurrences(TARGETz0,SUBSTRINGz0,COUNT)
:-
prolog:phrase(occurrences(SUBSTRINGz0,0,COUNT),TARGETz0)
.

occurrences("",_,_)
-->
! ,
{ false }
.

occurrences(SUBSTRINGz0,COUNT0,COUNT)
-->
SUBSTRINGz0 ,
! ,
{ COUNT1 is COUNT0 + 1 } ,
occurrences(SUBSTRINGz0,COUNT1,COUNT)
.

occurrences(SUBSTRINGz0,COUNT0,COUNT)
-->
[_] ,
! ,
occurrences(SUBSTRINGz0,COUNT0,COUNT)
.

occurrences(_SUBSTRINGz0_,COUNT,COUNT)
-->
!
.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines occurrences/3 (over chars, its own double_quotes flag) and never calls it; the driver counts the task's two examples.
:- initialization(forall(member(S-Sub, ["the three truths"-"th", "ababababab"-"abab"]), (occurrences(S, Sub, N), format("~w~n", [N])))).
