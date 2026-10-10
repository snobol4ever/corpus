% serialise -- generated: 17 November 1989
% Source: corpus/benchmarks/prolog/src/swi-vanroy/serialise.pl (https://github.com/SWI-Prolog/bench), its top/0 kept verbatim;
% vendored as a kernel on Lon's word (2026-10-09, CEO-1582: "We want the Warren benchmarks to be part of our benchmark suites.").
% Succeeds once; prints ok as the deterministic result signature (the derive kernel's convention).
% *BENCH kernel=serialise -- PRISTINE KERNEL (CEO-567): the computation and nothing else.
% The work is bench_work/1; the timing bracket and the iteration loop are GENERATED around
% this source by scripts/bench_prolog_wrap.sh and never live in it.  main/0 makes the file a
% real standalone program whose stdout is graded byte-for-byte against serialise.ref (oracle-cut, swipl: serialise.oracle).
:- initialization(main).
bench_work(Res) :-
    ( top -> Res = ok ; Res = failed ).
main :- bench_work(Res), write(Res), nl.
% generated: 17 November 1989
% option(s):
%
%   serialise
%
%   David H. D. Warren
%   Copyright: Public domain
%
%   itemize (pick a "serial number" for each
%   unique integer in) a list of 25 integers

top :-
    serialise.

serialise :-
    atom_codes('ABLE WAS I ERE I SAW ELBA', Codes),
    serialise(Codes,_).

serialise(L,R) :-
    pairlists(L,R,A),
    arrange(A,T),
    numbered(T,1,_).

pairlists([X|L],[Y|R],[pair(X,Y)|A]) :- pairlists(L,R,A).
pairlists([],[],[]).

arrange([X|L],tree(T1,X,T2)) :-
    split(L,X,L1,L2),
    arrange(L1,T1),
    arrange(L2,T2).
arrange([],void).

split([X|L],X,L1,L2) :- !, split(L,X,L1,L2).
split([X|L],Y,[X|L1],L2) :- before(X,Y), !, split(L,Y,L1,L2).
split([X|L],Y,L1,[X|L2]) :- before(Y,X), !, split(L,Y,L1,L2).
split([],_,[],[]).

before(pair(X1,_),pair(X2,_)) :- X1 < X2.

numbered(tree(T1,pair(_,N1),T2),N0,N) :-
    numbered(T1,N0,N1),
    N2 is N1+1,
    numbered(T2,N2,N).
numbered(void,N,N).
