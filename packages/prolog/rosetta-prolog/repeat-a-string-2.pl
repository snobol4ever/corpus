:- system:set_prolog_flag(double_quotes,chars) .

repeat(SOURCEz0,COUNT0,TARGETz)
:-
prolog:phrase(repeat(SOURCEz0,COUNT0),TARGETz)
.

%! repeat(SOURCEz0,COUNT0)//2

repeat(_SOURCEz0_,0)
-->
! ,
[]
.

repeat(SOURCEz0,COUNT0)
-->
SOURCEz0 ,
{ COUNT is COUNT0 - 1 } ,
repeat(SOURCEz0,COUNT)
.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines repeat/3 over char lists (it sets double_quotes=chars itself) and never calls it; the driver prints the task's "ha" repeated 5 times.
:- initialization((repeat("ha", 5, T), atom_chars(A, T), writeln(A))).
