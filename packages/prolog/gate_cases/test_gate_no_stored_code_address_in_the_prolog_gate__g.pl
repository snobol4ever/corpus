:- initialization(main).
p(1). p(2). p(3).
q(a). q(b).
det(X) :- ( X > 1 -> write(big) ; write(small) ), nl.
nore(X) :- ( p(X) -> write(found(X)) ; write(none) ), nl.
redoarm :- ( true -> p(Y), write(y(Y)), nl, fail ; true ).
redoarm :- write(redoarm_done), nl.
cutarm :- ( true -> p(Y), Y > 1, !, write(cut(Y)), nl ; true ).
elseredo :- ( fail -> true ; q(Z), write(z(Z)), nl, fail ).
elseredo :- write(elseredo_done), nl.
nested :- ( p(A) -> ( A > 0 -> write(pos(A)) ; write(neg(A)) ) ; write(no) ), nl.
sc1 :- ( p(X) *-> write(sc(X)), nl, fail ; write(scnone), nl ).
sc1 :- write(sc1_done), nl.
sc2 :- ( fail *-> write(never) ; write(scelse) ), nl.
sc3 :- ( q(W) *-> ( W == b -> write(scb) ; write(sca) ) ; write(scno) ), nl, fail.
sc3 :- write(sc3_done), nl.
sccut :- ( p(X) *-> X > 1, !, write(sccut(X)), nl ; write(no) ).
sccut :- write(sccut_done), nl.
noelse :- ( p(X), X > 2 -> write(ne(X)), nl ; true ).
ite_in_findall :- findall(V, ( p(V0), ( V0 > 1 -> V = big(V0) ; V = small(V0) ) ), L), write(L), nl.
sc_in_findall :- findall(V, ( q(V1) *-> V = got(V1) ; V = none ), L), write(L), nl.
ite_backtrack_into :- ( true -> p(X) ; true ), write(bt(X)), nl, X >= 3, write(bt_done), nl.
main :- det(0), det(5), nore(_), redoarm, cutarm, elseredo, nested, sc1, sc2, sc3, sccut, noelse,
        ite_in_findall, sc_in_findall, ite_backtrack_into.
