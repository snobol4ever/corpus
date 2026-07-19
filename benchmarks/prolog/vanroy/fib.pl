% fib — N-th Fibonacci by naive double recursion (van Roy / SWI bench, tabling stripped).
% Bottleneck: exponential double recursion + flat integer arithmetic.
% Source: SWI-Prolog/bench (fib). Prints fib(20).
:- initialization(main).
bench__main :- fib(20, F), write(F), nl.
fib(0, 1) :- !.
fib(1, 1) :- !.
fib(N, F) :- N > 1, N1 is N-1, N2 is N-2, fib(N1, F1), fib(N2, F2), F is F1 + F2.
main :- l__(256).
l__(N__) :- between(1, N__, _), bench__main, fail.
l__(_).
