fizzbuzz(X) :- X mod 15 =:= 0, !, write('FizzBuzz').
fizzbuzz(X) :- X mod 3 =:= 0, !, write('Fizz').
fizzbuzz(X) :- X mod 5 =:= 0, !, write('Buzz').
fizzbuzz(X) :- write(X).

dofizzbuzz :-between(1, 100, X), fizzbuzz(X), nl, fail.
dofizzbuzz.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines dofizzbuzz/0 and never calls it; the driver calls it once at load.
:- initialization(dofizzbuzz).
