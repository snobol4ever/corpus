:- initialization(main).
t(G) :- ( catch(call(G), E, (write(caught(E)), nl, fail)) -> write(ok(G)), nl ; write(failed(G)), nl ).
main :-
    G1 = current_op(_,xfx,is), t(G1),
    G2 = between(1,3,_), t(G2),
    G3 = current_predicate(main/0), t(G3),
    G4 = atom_length(abc,_), t(G4),
    G5 = call(true), t(G5),
    G6 = (X = 1, X == 1), t(G6),
    G7 = findall(Y, member(Y,[a,b]), L), t(G7), write(L), nl,
    G8 = sub_atom(abc,_,1,_,b), t(G8),
    G9 = atom_codes(_, [0'h, 0'i]), t(G9),
    halt.
member(X,[X|_]). member(X,[_|T]) :- member(X,T).
