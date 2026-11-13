o(1). o(2). o(3).
main :- ( op(555, fx, o), o(X), write(o(X)), nl, op(555, xf, o), fail ; true ), write(o(9)), nl,
        op(0, fx, o), write(o(9)), nl.
:- initialization(main).
