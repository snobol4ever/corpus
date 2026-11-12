t(G) :- catch(G, E, (nl, write(caught), nl)), nl, write('--'), nl.
:- initialization(main).
main :- t(format("abc", [1])), t(format("a~wb~wc", [x])), t(format("~w", [a, b])), t(format("x~w~n~w", [a])), t(format("%3.0d", [5])), halt.
