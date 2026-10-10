fib([0,1|X]) :-
    ffib(0,1,X).
ffib(A,B,X) :-
    freeze(X, (C is A+B, X=[C|Y], ffib(B,C,Y)) ).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines the lazy list fib/1 and never calls it; the driver takes its first 20 elements.
:- initialization((fib(L), length(P, 20), append(P, _, L), writeln(P))).
