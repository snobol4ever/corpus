:- initialization(main).
c5(a). c5(b). c5(c). c5(d). c5(e).
main :- c5(Q), write(Q), nl, fail ; true.
