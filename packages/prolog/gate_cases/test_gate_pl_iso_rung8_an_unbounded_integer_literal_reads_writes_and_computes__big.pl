:- initialization(main).
main :-
    X = 123456789012345678901234567890, write(a(X)), nl,
    ( integer(X) -> write(b(yes)) ; write(b(no)) ), nl,
    Y is 123456789012345678901234567890 + 1, write(c(Y)), nl,
    Z is 123456789012345678901234567890 * 3, write(d(Z)), nl,
    S is 123456789012345678901234567891 - 1, write(e(S)), nl,
    N is -(123456789012345678901234567890), write(f(N)), nl,
    ( 123456789012345678901234567890 > 999999999999999999 -> write(g(yes)) ; write(g(no)) ), nl,
    ( X == 123456789012345678901234567890 -> write(h(yes)) ; write(h(no)) ), nl,
    ( X = 123456789012345678901234567890 -> write(i(yes)) ; write(i(no)) ), nl,
    Q is 123456789012345678901234567890 // 3, write(j(Q)), nl,
    ( current_prolog_flag(bounded, B) -> write(k(B)) ; write(k(noflag)) ), nl,
    ( 7 =:= 7 -> write(l(yes)) ; write(l(no)) ), nl,
    M is 2 + 3, write(m(M)), nl,
    halt.
