pali(Str) :- sub_string(Str, 0, 1, _, X), string_concat(Str2, X, Str), string_concat(X, Mid, Str2), pali(Mid).
pali(Str) :- string_length(Str, Len), Len < 2.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines pali/1 over strings and never calls it; the driver tests a few palindromes and non-palindromes.
:- initialization(forall(member(W, ["racecar", "rotor", "abba", "a", "", "ab", "palindrome"]), ((pali(W) -> R = yes ; R = no), format("~q: ~w~n", [W, R])))).
