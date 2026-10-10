pali(Str) :- sub_atom(Str, 0, 1, _, X), atom_concat(Str2, X, Str), atom_concat(X, Mid, Str2), pali(Mid).
pali(Str) :- atom_length(Str, Len), Len < 2.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines pali/1 over atoms and never calls it; the driver tests a few palindromes and non-palindromes.
:- initialization(forall(member(W, [racecar, rotor, abba, a, '', ab, palindrome]), ((pali(W) -> R = yes ; R = no), format("~q: ~w~n", [W, R])))).
