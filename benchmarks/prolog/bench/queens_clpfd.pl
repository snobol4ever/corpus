% queens_clpfd -- Copied from https://swish.swi-prolog.org/example/clpfd_queens.pl
% Source: corpus/benchmarks/prolog/src/swi-vanroy/queens_clpfd.pl (https://github.com/SWI-Prolog/bench), its top/0 kept verbatim;
% vendored as a kernel on Lon's word (2026-10-09, CEO-1582: "We want the Warren benchmarks to be part of our benchmark suites.").
% Succeeds once; prints ok as the deterministic result signature (the derive kernel's convention).
% *BENCH kernel=queens_clpfd -- PRISTINE KERNEL (CEO-567): the computation and nothing else.
% The work is bench_work/1; the timing bracket and the iteration loop are GENERATED around
% this source by scripts/bench_prolog_wrap.sh and never live in it.  main/0 makes the file a
% real standalone program whose stdout is graded byte-for-byte against queens_clpfd.ref (oracle-cut, swipl: queens_clpfd.oracle).
:- initialization(main).
bench_work(Res) :-
    ( top -> Res = ok ; Res = failed ).
main :- bench_work(Res), write(Res), nl.
% Copied from https://swish.swi-prolog.org/example/clpfd_queens.pl
% Author: Markus Triska
% Copyright: this code is in the public domain

:- use_module(library(clpfd)).
:- op(700, xfx, my_ins).

top :- n_queens(16,_), !.

n_queens(N, Qs) :-
	gen_list(N, Qs),
	Qs my_ins 1..N,
	safe_queens(Qs),
	labeling([ff], Qs).

safe_queens([]).
safe_queens([Q|Qs]) :-
	safe_queens(Qs, Q, 1),
	safe_queens(Qs).

safe_queens([], _, _).
safe_queens([Q|Qs], Q0, D0) :-
	Q0 #\= Q,
	abs(Q0 - Q) #\= D0,
	D1 #= D0 + 1,
	safe_queens(Qs, Q0, D1).

% do not use SWI-Prolog ins/2 as SICStus   does not have it. The library
% is this simple loop with some additional type checks.

my_ins([], _).
my_ins([H|T], D) :-
	H in D,
	my_ins(T, D).

gen_list(0, []) :-
	!.
gen_list(N, [_|T]) :-
	N1 is N-1,
	gen_list(N1, T).
