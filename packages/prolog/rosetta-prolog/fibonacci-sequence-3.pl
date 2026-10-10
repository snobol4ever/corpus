%:- dynamic fib/2.  % This is ISO, but GNU doesn't like it.
:- dynamic(fib/2).  % Not ISO, but works in SWI, YAP and GNU unlike the ISO declaration.
fib(1, 1) :- !.
fib(0, 0) :- !.
fib(N, Value) :-
  A is N - 1, fib(A, A1),
  B is N - 2, fib(B, B1),
  Value is A1 + B1,
  asserta((fib(N, Value) :- !)).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines the memoising fib/2 and never calls it; the driver prints fib(0) .. fib(30).
:- initialization((findall(V, (between(0, 30, N), fib(N, V)), Vs), writeln(Vs))).
