:- initialization(main).
portray(x) :- numlist(1, 20000, L), sum_list(L, S), S > 0, write(xx).
main :- T = f(x, g(x, h(x)), k(x, x), x), format("~p~n", [T]), format("~p ~w ~p~n", [g(x), x, f(x, x)]),
        L = [x, f(x), x], format("~p~n", [L]), length(L, N), write(N), nl.
