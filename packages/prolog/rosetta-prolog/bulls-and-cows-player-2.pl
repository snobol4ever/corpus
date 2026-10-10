bulls_and_cows :-
   retractall('ia.pl':guess(_,_)),
   retractall(coups(_)),
   assert(coups(1)),

   repeat,
   (   tirage(Ms)
   ->  maplist(add_1, Ms, Ms1),
       atomic_list_concat(Ms1, Guess),
       retract(coups(Coup)),
       Coup_1 is Coup + 1,
       assert(coups(Coup_1)),
       format('~w My guess ~w~n', [Coup, Guess]),
       write('Bulls : '), read(Bulls),
       write('Cows  : '), read(Cows), nl,
       assert('ia.pl':guess(Ms, [Bulls, Cows])),
       Bulls = 4
   ;   writeln('Sorry, I can''t find a solution !'), true).

add_1(X, Y) :-
   Y is X + 1.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): one Rosetta page split in blocks: this block's bulls_and_cows/0 is the game and asks tirage/1 of bulls-and-cows-player-1, the module 'ia.pl' whose guess/2 it asserts module-qualified, so the driver takes -1 over and loads it with use_module (use_module_takeover: an include drops the module boundary and the game repeats its first guess forever) and plays it once at load; bulls-and-cows-player-2.in scores each guess for the secret 4628 (Bulls then Cows, one term a line), which it finds on the fifth guess.
:- use_module('bulls-and-cows-player-1.pl').
:- initialization(bulls_and_cows).
