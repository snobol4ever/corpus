:- use_module(library(lists)).
:- initialization(main).
:- dynamic held/1.
hold :- engine_create(X, between(1, 5, X), E), assertz(held(E)).
churn :- engine_create(X, between(1, 3, X), E), engine_next(E, _).
main :- hold, forall(between(1, 6, _), churn), garbage_collect, garbage_collect,
    held(H), engine_next(H, V1), engine_next(H, V2), format('held: ~w ~w~n', [V1, V2]),
    findall(E, current_engine(E), Es), ( memberchk(H, Es) -> writeln(held_listed) ; writeln(held_missing) ),
    garbage_collect, engine_next(H, V3), format('later: ~w~n', [V3]), engine_destroy(H), writeln(done).
