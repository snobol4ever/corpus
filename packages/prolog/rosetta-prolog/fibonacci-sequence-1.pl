fib(1, 1) :- !.
fib(0, 0) :- !.
fib(N, Value) :-
  A is N - 1, fib(A, A1),
  B is N - 2, fib(B, B1),
  Value is A1 + B1.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines fib/2 and never calls it; the driver prints fib(0) .. fib(20).
:- initialization((findall(V, (between(0, 20, N), fib(N, V)), Vs), writeln(Vs))).
