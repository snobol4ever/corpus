:- initialization(main).
main :-
    G1 = between(1,3,X), findall(X, call(G1), L1), write(L1), nl,
    G2 = between(1,3,Y), findall(Y, G2, L2), write(L2), nl,
    G3 = member(Z,[a,b,c]), ( call(G3), write(Z), nl, Z == b -> true ; true ),
    G4 = between(1), findall(W, call(G4, 2, W), L4), write(L4), nl,
    G5 = foo(1), catch(call(G5), error(E5,_), (write(E5), nl)),
    catch(call(G5), error(E6,_), (write(E6), nl)),
    G7 = !, ( call(G7) -> write(cut_true) ; write(cut_false) ), nl,
    G8 = (member(Q,[1,2,3]), Q > 1), findall(Q, G8, L8), write(L8), nl,
    G9 = atom_codes(A9, [0'h,0'i]), call(G9), write(A9), nl,
    G10 = current_op(P, xfx, is), findall(P, G10, L10), write(L10), nl,
    G11 = sub_atom(hello, B, 2, _, Sub), findall(B-Sub, G11, L11), write(L11), nl,
    G12 = (X12 = 1 ; X12 = 2), findall(X12, G12, L12), write(L12), nl,
    G13 = catch(throw(oops), oops, true), ( call(G13) -> write(catch_ok) ; write(catch_bad) ), nl,
    G14 = nl, call(G14),
    G15 = fail, ( call(G15) -> write(bad) ; write(fail_ok) ), nl,
    G16 = forall(member(F,[1,2]), F > 0), ( call(G16) -> write(forall_ok) ; write(forall_bad) ), nl,
    G17 = (\+ member(9,[1,2])), ( call(G17) -> write(neg_ok) ; write(neg_bad) ), nl,
    G18 = 3, catch(call(G18), error(E18,_), (write(E18), nl)),
    halt.
member(X,[X|_]). member(X,[_|T]) :- member(X,T).
