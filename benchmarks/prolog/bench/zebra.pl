% zebra — the zebra puzzle (van Roy suite, Claude Sammut). Pure unification constraint.
% Bottleneck: nondeterministic search via unification only; no arithmetic.
% Source: SWI-Prolog/bench (zebra). Prints the solved Houses list.
% *BENCH kernel=zebra -- PRISTINE KERNEL (CEO-567): the computation and nothing else.
% The work is bench_work/1; the timing bracket and the iteration loop are GENERATED around
% this source by scripts/bench_prolog_wrap.sh and never live in it.  main/0 makes the file a
% real standalone program whose stdout is graded byte-for-byte against zebra.expected (oracle-cut).
:- initialization(main).
bench_work(Houses) :-
    zebra(Houses).
main :- bench_work(Res), write(Res), nl.
zebra(Houses) :-
        houses(Houses),
        my_member(house(red, english, _, _, _), Houses),
        my_member(house(_, spanish, dog, _, _), Houses),
        my_member(house(green, _, _, coffee, _), Houses),
        my_member(house(_, ukrainian, _, tea, _), Houses),
        right_of(house(green,_,_,_,_), house(ivory,_,_,_,_), Houses),
        my_member(house(_, _, snails, _, winstons), Houses),
        my_member(house(yellow, _, _, _, kools), Houses),
        Houses = [_, _, house(_, _, _, milk, _), _,_],
        Houses = [house(_, norwegian, _, _, _)|_],
        next_to(house(_,_,_,_,chesterfields), house(_,_,fox,_,_), Houses),
        next_to(house(_,_,_,_,kools), house(_,_,horse,_,_), Houses),
        my_member(house(_, _, _, orange_juice, lucky_strikes), Houses),
        my_member(house(_, japanese, _, _, parliaments), Houses),
        next_to(house(_,norwegian,_,_,_), house(blue,_,_,_,_), Houses),
        my_member(house(_, _, zebra, _, _), Houses),
        my_member(house(_, _, _, water, _), Houses).
houses([house(_,_,_,_,_),house(_,_,_,_,_),house(_,_,_,_,_),house(_,_,_,_,_),house(_,_,_,_,_)]).
right_of(A, B, [B, A | _]).
right_of(A, B, [_ | Y]) :- right_of(A, B, Y).
next_to(A, B, [A, B | _]).
next_to(A, B, [B, A | _]).
next_to(A, B, [_ | Y]) :- next_to(A, B, Y).
my_member(X, [X|_]).
my_member(X, [_|T]) :- my_member(X, T).
