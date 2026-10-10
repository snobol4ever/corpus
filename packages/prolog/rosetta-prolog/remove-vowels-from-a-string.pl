:- system:set_prolog_flag(double_quotes,chars) .

:- [library(lists)] .

%! remove_vowels(INPUTz0,OUTPUTz0)
%
% `OUTPUTz0` is `INPUTz0` but without any vowels .

remove_vowels(INPUTz0,OUTPUTz0)
:-
prolog:phrase(remove_vowels(INPUTz0),OUTPUTz0)
.

remove_vowels([])
-->
[]
.

remove_vowels([INPUT0|INPUTz0])
-->
{ vowel(INPUT0) } ,
! ,
remove_vowels(INPUTz0)
.

remove_vowels([INPUT0|INPUTz0])
-->
! ,
[INPUT0] ,
remove_vowels(INPUTz0)
.

vowel(CHAR)
:-
lists:member(CHAR,"AEIOUaeiouüéâäàåçêëèïîìÄÅÉæÆôöòûùÿÖÜáíóúªºαΩ")
.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines remove_vowels/2 over char lists (it sets double_quotes=chars itself) and never calls it; the driver prints it for a sample sentence (the task fixes none).
:- initialization((remove_vowels("Rosetta Code is a programming chrestomathy site.", O), atom_chars(A, O), writeln(A))).
