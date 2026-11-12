:- use_module(library(lists)).
:- use_module(library(dcg/basics)).
:- use_module(library(solution_sequences)).
:- initialization(main).
display(G) :- write(user(G)), nl.
concat_atom(L, R) :- atomic_list_concat(L, '-', R).
t(T, G) :- catch((call(G) -> \+ \+ (numbervars(T, 0, _), writeq(T)) ; writeq(no)), error(E, _), \+ \+ (numbervars(E, 0, _), writeq(caught(E)))), nl.
grp(S, L) :- group_by(S, Lf, (member(N, [12, 127, 7, 28, 42, 5, 113]), divmod(N, 10, S, Lf)), L).
main :-
    display([a, b]),
    maplist([R]>>display(R), [[c], [d]]),
    t(A, concat_atom([x, y, z], A)),
    t(Cs-T, (format(codes(Cs, T), "~w-~a", [12, x]), T = [0'!])),
    t(Hs, (format(chars(Hs, T2), "~d", [345]), T2 = [z])),
    t(C1, (with_output_to(codes(C1, T3), write(abc)), T3 = [])),
    t(C2, (with_output_to(chars(C2, T4), (write(a), write(b))), T4 = [c])),
    t(D1, phrase(integer(12), D1)),
    t(D2, (phrase(integer(345), D2, [0'x]))),
    t(Gs, findall(S-L, grp(S, L), Gs)),
    t(Bs, findall(S-L, (G = (member(N, [12, 127, 7, 28, 42, 5, 113]), divmod(N, 10, S, Lf)), E =.. [v, N], bagof(Lf, E^G, L)), Bs)),
    t(Ss, findall(S-L, (G = (member(N, [12, 127, 7, 28, 42, 5, 113, 7]), divmod(N, 10, S, Lf)), setof(Lf, N^G, L)), Ss)).
