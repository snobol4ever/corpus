app([], L, L).
app([H|T], L, [H|R]) :- app(T, L, R).
:- app([1,2],[3],X), write(X), nl.
