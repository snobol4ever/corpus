:- initialization(main).
t1 :- A is 1 + 9223372036854775807, A =:= 9223372036854775808.
main :- ( catch(t1, E, (write(caught(E)), nl, fail)) -> write(static_ok) ; write(static_no) ), nl,
        assertz((t2 :- A is 1 + 9223372036854775807, A =:= 9223372036854775808)),
        ( catch(t2, E2, (write(caught(E2)), nl, fail)) -> write(dyn_ok) ; write(dyn_no) ), nl,
        X = 9223372036854775808, assertz(t3(X)), t3(Y), write(Y), nl,
        assertz((t4(Z) :- Z is -9223372036854775809 - 1)), t4(W), write(W), nl.
