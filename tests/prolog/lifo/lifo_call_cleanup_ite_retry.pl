d(G, D) :- call_cleanup(G, Det = true), ( Det == true -> D = true ; D = false ).
main :- ( d(member(X, [1, 2, 3]), D), write(X-D), nl, fail ; true ), write(done), nl.
:- initialization(main).
