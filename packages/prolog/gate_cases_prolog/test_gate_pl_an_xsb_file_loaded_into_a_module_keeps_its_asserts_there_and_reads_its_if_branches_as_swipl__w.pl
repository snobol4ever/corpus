:- use_module(library(lists)).
:- initialization(main).
in(M, G) :- M:G.
main :- load_files(m1:'a.P', [dialect(xsb)]), load_files(m2:'b.P', [dialect(xsb)]),
        findall(W, in(m1, which(W)), Ws), write(Ws), nl,
        current_prolog_flag(dialect, D), current_prolog_flag(version_data, V), functor(V, VN, VA), write(D-VN/VA), nl,
        in(m1, ld([p(1), p(2)])), in(m2, ld([p(3)])),
        findall(X, in(m1, q(X)), L1), write(L1), nl,
        findall(X, in(m2, q(X)), L2), write(L2), nl,
        in(m1, drop(p(1))), findall(X, in(m1, q(X)), L3), write(L3), nl,
        findall(X, in(m2, q(X)), L4), write(L4), nl,
        in(m2, fx(B, E)), write(B-E), nl,
        ( catch(p(_), error(existence_error(_, _), _), fail) -> write(user_p) ; write(no_user_p) ), nl,
        in(m1, mk), findall(X, in(m1, s(X)), L5), write(L5), nl,
        ( catch(r(_), error(existence_error(_, _), _), fail) -> write(user_r) ; write(no_user_r) ), nl,
        ( in(m1, t(_)), fail ; true ), findall(X-R, in(m1, res(t(X), R)), L6), msort(L6, L7), write(L7), nl,
        in(m1, rc(L8)), write(L8), nl,
        in(m1, ua), ( in(m1, u(_)), fail ; true ), findall(X-R, in(m1, res(u(X), R)), L9), msort(L9, L10), write(L10), nl,
        halt.
