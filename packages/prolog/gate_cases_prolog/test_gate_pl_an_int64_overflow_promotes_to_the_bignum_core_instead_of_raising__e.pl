:- initialization(main).
main :-
    A is 2 + 2, write(a(A)), nl,
    B is 7 // 2, write(b(B)), nl,
    C is -7 // 2, write(c(C)), nl,
    D is 7 mod -2, write(d(D)), nl,
    E is abs(-5), write(e(E)), nl,
    F is 0 - 5, write(f(F)), nl,
    G is 6 * 7, write(g(G)), nl,
    ( integer(42) -> write(h(yes)) ; write(h(no)) ), nl,
    succ(3, I), write(i(I)), nl,
    plus(3, 4, J), write(j(J)), nl,
    halt.
