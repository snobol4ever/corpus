% sieve -- Benchmark prime number generation  using   the  sieve  of Eratosthenes
% Source: corpus/benchmarks/prolog/src/swi-vanroy/sieve.pl (https://github.com/SWI-Prolog/bench), its top/0 kept verbatim;
% vendored as a kernel on Lon's word (2026-10-09, CEO-1582: "We want the Warren benchmarks to be part of our benchmark suites.").
% Succeeds once; prints ok as the deterministic result signature (the derive kernel's convention).
% *BENCH kernel=sieve -- PRISTINE KERNEL (CEO-567): the computation and nothing else.
% The work is bench_work/1; the timing bracket and the iteration loop are GENERATED around
% this source by scripts/bench_prolog_wrap.sh and never live in it.  main/0 makes the file a
% real standalone program whose stdout is graded byte-for-byte against sieve.ref (oracle-cut, swipl: sieve.oracle).
:- initialization(main).
bench_work(Res) :-
    ( top -> Res = ok ; Res = failed ).
main :- bench_work(Res), write(Res), nl.
% Benchmark prime number generation  using   the  sieve  of Eratosthenes
% algorithm with assert/retract. This benchmark tests assert/retract and
% JIT index generation and destruction.
%
% Auther: Jan Wielemaker
% Copyright: Public domain.

:- dynamic(prime/1).
:- dynamic(candidate/1).

top :- clean, primes(10000), !.

clean :-
    retractall(prime(_)),
    retractall(candidate(_)).

primes(N) :-
    \+ ( range(2, N, I), \+ assertz(candidate(I))),
    sieve(N).

sieve(Max) :-
    retract(candidate(First)),
    !,
    assertz(prime(First)),
    First < Max,
    sieve(First, 2, Max),
    sieve(Max).
sieve(_).

sieve(N, Mul, Max) :-
    I is N*Mul,
    I =< Max,
    !,
    (   retract(candidate(I))
    ->  true
    ;   true
    ),
    Mul2 is Mul+1,
    sieve(N, Mul2, Max).
sieve(_, _, _).

% is between/3, but only in mode +,+,-.  Simple Prolog definition
% for portability.
range(Low, High, Low) :-
    Low =< High.
range(Low, High, I) :-
    Low2 is Low+1,
    Low2 =< High,
    range(Low2, High, I).
