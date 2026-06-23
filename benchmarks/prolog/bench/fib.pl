% fib — N-th Fibonacci by naive double recursion (van Roy / SWI bench, tabling stripped).
% Bottleneck: exponential double recursion + flat integer arithmetic.
% Source: SWI-Prolog/bench (fib). Prints fib(20).
:- initialization(main).
main :- fib(20, F), write(F), nl.
fib(0, 1) :- !.
fib(1, 1) :- !.
fib(N, F) :- N > 1, N1 is N-1, N2 is N-2, fib(N1, F1), fib(N2, F2), F is F1 + F2.
