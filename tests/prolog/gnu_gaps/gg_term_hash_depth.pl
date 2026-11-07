:- initialization(main).
t(G) :- copy_term(G, C), catch(findall(C, C, L), E, true), ( var(E) -> R = L ; R = caught(E) ), \+ \+ ( numbervars(G-R, 0, _), writeq(G), write(' => '), writeq(R), nl ).
h(T, D, R) :- ( term_hash(T, D, R, H) -> ( var(H) -> V = unbound ; V = H ) ; V = failed ), \+ \+ ( numbervars(T, 0, _), writeq(th(T, D, R)), write(' = '), writeq(V), nl ).
main :-
    term_hash(f(a, g(b, c)), H2), term_hash(f(a, g(b, c)), -1, 0, H4), ( H2 == H4 -> write(two_is_four_at_minus_one) ; write(two_differs_from_four) ), nl,
    h(f(a, g(b, c)), -1, 0), h(f(a, g(b, c)), 1, 0), h(f(a, g(b, c)), 2, 0), h(f(a, g(b, c)), 3, 0), h(f(a, g(b, c)), 4, 0),
    h(f(a, g(b, c)), 2, 100), h(f(a, g(b, c)), 3, 1000), h(f(a, g(b, c)), -1, 1), h(f(a, g(b, c)), -1, 7),
    h(foo, 1, 100), h(foo, -1, 0), h(42, 1, 0), h(42, -1, 0), h(1.5, 1, 0), h(f(a), 0, 0), h(f(a), 0, 100),
    h([a, b, c], 1, 0), h([a, b, c], 2, 0), h([a, b, c], 3, 0), h([a, b, c], 4, 0), h([a, b, c], 5, 0), h([a, [b]], 2, 0), h([a, [b]], 3, 0),
    h(f(_, b), 2, 0), h(f(_, b), 1, 0), h(f(g(_)), 1, 0), h(f(1.5, 2), 2, 0), h(f(123456789012345, x), 1, 0), h(f(y, z), 1, 0),
    h(f(a, g(b, c), h(d)), 2, 0), h(f(a, g(x, y), h(d)), 2, 0), h(f(a, g(b, c), h(d)), 3, 0), h(f(a, g(x, y), h(d)), 3, 0),
    t(term_hash(f(a), _, 0, _)), t(term_hash(f(a), a, 0, _)), t(term_hash(f(a), 1, _, _)), t(term_hash(f(a), 1, a, _)), t(term_hash(f(a), 1, -1, _)), t(term_hash(f(a), 1, 10, a)),
    halt.
