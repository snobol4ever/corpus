:- initialization(main).
portray(p(X)) :- format("<~p>", [X]).
portray(x) :- numlist(1, 5000, L), length(L, _), write(ex).
main :- format("~p~n", [f(p(x), p(g(x, p(x))), x)]), format("~p|~p~n", [p(p(x)), q(x)]).
