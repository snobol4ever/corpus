palindrome(Word) :- name(Word,List), reverse(List,List).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines palindrome/1 and never calls it; the driver tests a few palindromes and non-palindromes.
:- initialization(forall(member(W, [racecar, rotor, abba, a, '', ab, palindrome]), ((palindrome(W) -> R = yes ; R = no), format("~q: ~w~n", [W, R])))).
