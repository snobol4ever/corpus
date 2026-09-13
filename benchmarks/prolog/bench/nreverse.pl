% nreverse — naive reverse of a 30-element list (Warren / van Roy suite)
% Bottleneck: list construction + deep recursion (O(n^2) conses).
% Source: SWI-Prolog/bench (van Roy set). SCRIP harness prints the reversed
% list as a deterministic result signature (timing harness replaced by a
% correctness signature per corpus benchmark convention).
% *BENCH kernel=nreverse -- PRISTINE KERNEL (CEO-567): the computation and nothing else.
% The work is bench_work/1; the timing bracket and the iteration loop are GENERATED around
% this source by scripts/bench_prolog_wrap.sh and never live in it.  main/0 makes the file a
% real standalone program whose stdout is graded byte-for-byte against nreverse.expected (oracle-cut).
:- initialization(main).
bench_work(R) :-
    nreverse([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,
                  21,22,23,24,25,26,27,28,29,30], R).
main :- bench_work(Res), write(Res), nl.
nreverse([X|L0],L) :- nreverse(L0,L1), concatenate(L1,[X],L).
nreverse([],[]).
concatenate([X|L1],L2,[X|L3]) :- concatenate(L1,L2,L3).
concatenate([],L,L).
