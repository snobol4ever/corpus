:- initialization(main).
t(A|B, A-B).
type(A|B) --> [A], [B].
main :- ( t(p|q, R) -> writeq(head-R) ; writeq(head-no) ), nl,
    X = f(a|b), writeq(X), nl, X = f(Y), functor(Y, N, Ar), writeq(N/Ar), nl,
    Z = [a|b], writeq(Z), nl,
    W = (a|b), W =.. L, writeq(L), nl,
    E = [f(a|b), c], writeq(E), nl,
    ( phrase(type(u|v), [u, v]) -> writeq(dcg-yes) ; writeq(dcg-no) ), nl,
    read_term_from_atom('f(a|b)', T, []), writeq(read(T)), nl,
    term_to_atom(T2, 'g([x|y], (p|q), {r|s})'), writeq(T2), nl.
