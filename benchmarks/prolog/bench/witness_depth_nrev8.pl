:- initialization(main).
main :- mklist(8, L), rev(L, R), write(R), nl.
mklist(0, []) :- !.
mklist(N, [N|T]) :- N1 is N-1, mklist(N1, T).
rev([], []).
rev([H|T], R) :- rev(T, RT), append(RT, [H], R).
append([], L, L).
append([H|T], L, [H|R]) :- append(T, L, R).
