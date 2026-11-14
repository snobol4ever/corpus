:- initialization(main).
:- dynamic(emp/1).
:- multifile(fenix/1).
:- discontiguous(scattered/2).
chk(N, G, Want) :- catch((call(G) -> R = yes ; R = no), error(E, _), R = E), ( R == Want -> write(ok(N)) ; write(bad(N, R)) ), nl.
main :-
    chk(g, emp(1), no), chk(h, fenix(_), no), chk(i, scattered(_, _), no),
    chk(m, foobar(_), existence_error(procedure, foobar/1)),
    halt.
