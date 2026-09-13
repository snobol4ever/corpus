% fib — N-th Fibonacci by naive double recursion (van Roy / SWI bench, tabling stripped).
% Bottleneck: exponential double recursion + flat integer arithmetic.
% Source: SWI-Prolog/bench (fib). Prints fib(20).
% *BENCH kernel=fib -- PRISTINE KERNEL (CEO-567): the computation and nothing else.
% The work is bench_work/1; the timing bracket and the iteration loop are GENERATED around
% this source by scripts/bench_prolog_wrap.sh and never live in it.  main/0 makes the file a
% real standalone program whose stdout is graded byte-for-byte against fib.expected (oracle-cut).
:- initialization(main).
bench_work(F) :-
    fib(20, F).
main :- bench_work(Res), write(Res), nl.
fib(0, 1) :- !.
fib(1, 1) :- !.
fib(N, F) :- N > 1, N1 is N-1, N2 is N-2, fib(N1, F1), fib(N2, F2), F is F1 + F2.
