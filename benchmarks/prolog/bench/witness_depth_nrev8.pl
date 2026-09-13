% *BENCH kernel=witness_depth_nrev8 -- PRISTINE KERNEL (CEO-567): the computation and nothing else.
% The work is bench_work/1; the timing bracket and the iteration loop are GENERATED around
% this source by scripts/bench_prolog_wrap.sh and never live in it.  main/0 makes the file a
% real standalone program whose stdout is graded byte-for-byte against witness_depth_nrev8.expected (oracle-cut).
:- initialization(main).
bench_work(R) :-
    mklist(8, L), rev(L, R).
main :- bench_work(Res), write(Res), nl.
mklist(0, []) :- !.
mklist(N, [N|T]) :- N1 is N-1, mklist(N1, T).
rev([], []).
rev([H|T], R) :- rev(T, RT), append(RT, [H], R).
append([], L, L).
append([H|T], L, [H|R]) :- append(T, L, R).
