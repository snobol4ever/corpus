:- use_module(library(lists)).
:- use_module(library(aggregate)).
:- initialization(main).
:- dynamic held/1.
n(N) :- aggregate_all(count, current_engine(_), N).
settle(Target) :- ( between(1, 40, _), garbage_collect_atoms, garbage_collect, n(N), N =< Target -> true ; true ).
plain :- engine_create(x, true, _).
parked :- engine_create(X, between(1, 3, X), E), engine_next(E, _).
selfref :- engine_create(X, (engine_self(E), engine_yield(E-X), true), H), engine_next(H, _).
hold :- engine_create(X, between(1, 5, X), E), assertz(held(E)).
verdict(Name, Goal, Base) :- forall(between(1, 100, _), Goal), settle(Base + 25), n(N), D is N - Base,
    ( D =< 25 -> V = reclaimed ; D >= 50 -> V = kept ; V = partial ), format('~w: ~w~n', [Name, V]).
main :-
    n(B0), verdict(plain, plain, B0),
    n(B1), verdict(parked, parked, B1),
    n(B2), verdict(selfref, selfref, B2),
    hold, settle(0), held(H), engine_next(H, V1), engine_next(H, V2), format('held: ~w ~w~n', [V1, V2]),
    engine_create(Xa, between(1, 3, Xa), L1), engine_create(Xb, between(10, 13, Xb), L2), settle(0),
    findall(E, current_engine(E), Es), ( memberchk(L1, Es), memberchk(L2, Es) -> writeln(live_listed) ; writeln(live_missing) ),
    engine_next(L1, A1), engine_next(L2, A2), format('live_answer: ~w ~w~n', [A1, A2]),
    engine_destroy(L1), engine_destroy(L2), writeln(done).
