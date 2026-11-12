:- initialization(main).
plain :- engine_create(x, true, _).
main :- forall(between(1, 100, _), plain), garbage_collect, '$engine_stats'(M, R, F, L), format('made=~w reaped=~w freed=~w live=~w~n', [M, R, F, L]).
