% moded_path -- a program of the SWI-Prolog benchmark suite (the van Roy set).
% Source: corpus/benchmarks/prolog/src/swi-vanroy/moded_path.pl (https://github.com/SWI-Prolog/bench), its top/0 kept verbatim;
% vendored as a kernel on Lon's word (2026-10-09, CEO-1582: "We want the Warren benchmarks to be part of our benchmark suites.").
% Succeeds once; prints ok as the deterministic result signature (the derive kernel's convention).
% *BENCH kernel=moded_path -- PRISTINE KERNEL (CEO-567): the computation and nothing else.
% The work is bench_work/1; the timing bracket and the iteration loop are GENERATED around
% this source by scripts/bench_prolog_wrap.sh and never live in it.  main/0 makes the file a
% real standalone program whose stdout is graded byte-for-byte against moded_path.ref (oracle-cut, swipl: moded_path.oracle).
:- initialization(main).
bench_work(Res) :-
    ( top -> Res = ok ; Res = failed ).
main :- bench_work(Res), write(Res), nl.
/*  Part of SWI-Prolog

    Author:        Fabrizio Riguzzi
    WWW:           http://www.swi-prolog.org
    Copyright (c)  2020, SWI-Prolog Solutions b.v.
    All rights reserved.

    Redistribution and use in source and binary forms, with or without
    modification, are permitted provided that the following conditions
    are met:

    1. Redistributions of source code must retain the above copyright
       notice, this list of conditions and the following disclaimer.

    2. Redistributions in binary form must reproduce the above copyright
       notice, this list of conditions and the following disclaimer in
       the documentation and/or other materials provided with the
       distribution.

    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
    "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
    LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
    FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
    COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
    INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
    BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
    LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
    CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
    LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
    ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
    POSSIBILITY OF SUCH DAMAGE.
*/

top :-
    abolish_all_tables,
    \+ \+ (path(a, e, T), ok_path(T)).

:- table
    path(_,_,lattice(or/3)),
    edge(_,_,lattice(or/3)).

path(X,X,one).
path(X,Y,C):-
    edge(X,Z,A),
    path(Z,Y,B),
    and(A,B,C).

path(A,B,zero) :-
    nonvar(A),
    nonvar(B).

edge(a,b,e(a,b)).
edge(b,e,e(b,e)).
edge(a,e,e(a,e)).

edge(A,B,zero):-
    nonvar(A),
    nonvar(B).

or(zero, B, B) :- !.
or(B, zero, B) :- !.
or(one, one, one) :- !.
or(A,A,A):-!.
or(A, B, or(A,B)).

and(zero, _, _) :- !, fail.
and(_, zero, _) :- !, fail.
and(one, B, B) :- !.
and(B, one, B) :- !.
and(A,A,A):-!.
and(A, B, and(A,B)).

ok_path(or(e(a, e), and(e(a, b), e(b, e)))).
ok_path(or(and(e(a, b), e(b, e)), e(a, e))).
