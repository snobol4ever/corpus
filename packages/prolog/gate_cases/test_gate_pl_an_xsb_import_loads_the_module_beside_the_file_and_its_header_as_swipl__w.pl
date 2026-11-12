:- use_module(library(lists)).
:- initialization(main).
in(M, G) :- M:G.
main :- load_files(m1:'a.P', [dialect(xsb)]),
        findall(X, in(m1, g(X)), L0), msort(L0, L1), write(L1), nl,
        in(m1, k(L2)), write(L2), nl,
        in(m1, r(L3)), write(L3), nl,
        in(m1, p(P)), write(P), nl,
        in(m1, v(V)), write(V), nl,
        ( catch(in(m1, h(_)), error(existence_error(_, _), _), fail) -> write(h_visible) ; write(h_hidden) ), nl,
        halt.
