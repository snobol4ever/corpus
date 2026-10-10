% eval -- Author: Jan Wielemaker
% Source: corpus/benchmarks/prolog/src/swi-vanroy/eval.pl (https://github.com/SWI-Prolog/bench), its top/0 kept verbatim;
% vendored as a kernel on Lon's word (2026-10-09, CEO-1582: "We want the Warren benchmarks to be part of our benchmark suites.").
% Succeeds once; prints ok as the deterministic result signature (the derive kernel's convention).
% The 1 DEC-10 :- mode/1 declaration(s) of the source are dropped: no engine here gives them meaning and swipl has no mode/1.
% *BENCH kernel=eval -- PRISTINE KERNEL (CEO-567): the computation and nothing else.
% The work is bench_work/1; the timing bracket and the iteration loop are GENERATED around
% this source by scripts/bench_prolog_wrap.sh and never live in it.  main/0 makes the file a
% real standalone program whose stdout is graded byte-for-byte against eval.ref (oracle-cut, swipl: eval.oracle).
:- initialization(main).
bench_work(Res) :-
    ( top -> Res = ok ; Res = failed ).
main :- bench_work(Res), write(Res), nl.
% Author: Jan Wielemaker
% This code is in the public domain

% Evaluate large arithmetic expressions


top :-
    t_(1000, 1).

t(D,N) :-
    time(t_(D,N)).

t_(D,N) :-
    add(D, Expr),
    (   repeat(N),
        V is Expr,
        integer(V),                     % avoid optimization
        fail
    ;   true
    ).

add(0, 1) :- !.
add(N, (Expr+N)) :-
    N2 is N - 1,
    add(N2, Expr).

repeat(N) :-
    (   true
    ;   N > 0,
        N1 is N-1,
        repeat(N1)
    ).
