% YAP compatibility, the grader 2026-11-17: the program below is the YAP JIT example as YAP ships it; these lines give swipl and SCRIP
% the YAP builtins it calls (bb_put and bb_get, its blackboard, on nb_setval), and its one command-line argument, fixed at 2 (unix(argv(L)) in YAP).
unix(argv([A])) :- atom_number(A, 2), !.
unix(argv(['2'])).
number_atom(N, A) :- atom_number(A, N).
yap_flag(F, V) :- set_prolog_flag(F, V).
bb_put(K, V) :- term_to_atom(K, A), nb_setval(A, V).
bb_get(K, V) :- term_to_atom(K, A), nb_getval(A, V).

% ----------------------------------------------------------------------
% The Computer Language Benchmarks Game
% http://shootout.alioth.debian.org/
%
% This is a slightly-modified version of the exising nsieve implementation
% differing only in the mechanism used to mimic array creation and
% access. This version [when compared to existing version]:
%
% * Makes only modest demands of the global stack, so should execute using
%   default values, at least up to a load of N = 9. However, its heap
%   memory demands make it prone to thrashing [existing version is more
%   stable as long as a sufficiently large stack size is specified]
%
% * Execution times are on par at up to N = 6, then diverge quite
%   dramatically [e.g. at N = 8 this version is roughly twice as fast as
%   existing version]
%
% Contributed by Anthony Borla
% Modified to run with YAP by Glendon Holst
% ----------------------------------------------------------------------

:- set_prolog_flag(unknown,error).

:- initialization(main).

main :-
   unix( argv([H|_]) ), number_atom(N,H),

   N1 is 10000 << N,
   N2 is 10000 << (N - 1),
   N3 is 10000 << (N - 2),

   calcAndshowSieve(N1),
   calcAndshowSieve(N2),
   calcAndshowSieve(N3),

   statistics,
   statistics_jit.

% ------------------------------- %

calcAndshowSieve(N) :-
   make_array(N, 1),
   nsieve(2, N, 0, R),
   format('Primes up to~t~w~21|~t~w~30|~n', [N, R]).

% ------------------------------- %

nsieve(ASize, ASize, R, R) :- !.
nsieve(N, ASize, A, R) :-
   (
      is_slot(N) ->
      clear_sieve(N, N, ASize), A1 is A + 1
   ;
      A1 is A
   ),
   N1 is N + 1, !,
   nsieve(N1, ASize, A1, R).

% ------------- %

clear_sieve(N, M, ASize) :-
   N1 is N + M, clear_sieve_(N1, M, ASize).

% ------------- %

clear_sieve_(N, _, ASize) :- ASize < N, !.

clear_sieve_(N, M, ASize) :-
   clear_slot(N),
   N1 is N + M, !, clear_sieve_(N1, M, ASize).

% ------------------------------- %

make_array(N, V) :- fill_array(N, V).

% ------------- %

fill_array(0, _) :- !.
fill_array(N, V) :- bb_put(N, V), N1 is N - 1, !, fill_array(N1, V).

% ------------- %

set_slot(N) :- bb_put(N, 1).
clear_slot(N) :- bb_put(N, 0).
is_slot(N) :- bb_get(N, 1).

% ------------------------------- %

