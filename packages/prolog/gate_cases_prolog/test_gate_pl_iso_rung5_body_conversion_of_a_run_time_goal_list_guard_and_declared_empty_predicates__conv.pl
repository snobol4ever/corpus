:- initialization(main).
:- dynamic(emp/1).
:- multifile(fenix/1).
:- discontiguous(scattered/2).
one(1).
chk(N, G, Want) :- catch((call(G) -> R = yes ; R = no), error(E, _), R = E), ( R == Want -> write(ok(N)) ; write(bad(N, R)) ), nl.
lit_conj(One) :- catch((call((fail, One)) -> R = yes ; R = no), error(E, _), R = E), ( R == type_error(callable, (fail, 1)) -> write(ok(n)) ; write(bad(n, R)) ), nl.
lit_disj(One) :- catch((call((One ; true)) -> R = yes ; R = no), error(E, _), R = E), ( R == type_error(callable, (1 ; true)) -> write(ok(o)) ; write(bad(o, R)) ), nl.
lit_nested_unbound :- ( call((fail, _)) -> write(bad(p)) ; write(ok(p)) ), nl.
main :-
    one(One),
    chk(a, (fail, One), type_error(callable, (fail, 1))),
    chk(b, (write(3), One), type_error(callable, (write(3), 1))),
    chk(c, (One ; true), type_error(callable, (1 ; true))),
    chk(d, (fail, _), no),
    G1 = (true -> One ; true), chk(e, G1, type_error(callable, (true -> 1 ; true))),
    G2 = (fail, 1), chk(f, G2, type_error(callable, (fail, 1))),
    chk(g, emp(1), no), chk(h, fenix(_), no), chk(i, scattered(_, _), no),
    chk(j, findall(_, (write(never), nl), 12), type_error(list, 12)),
    chk(k, findall(_, true, [a|b]), type_error(list, [a|b])),
    chk(l, findall(X, member(X, [1,2]), [1|T]), yes), write(T), nl,
    chk(m, foobar(_), existence_error(procedure, foobar/1)),
    lit_conj(One), lit_disj(One), lit_nested_unbound,
    halt.
member(X,[X|_]). member(X,[_|T]) :- member(X,T).
