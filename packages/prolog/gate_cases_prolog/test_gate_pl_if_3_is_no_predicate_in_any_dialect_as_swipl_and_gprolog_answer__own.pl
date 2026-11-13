:- initialization(main).
if(a, b, c).
main :-
    ( if(a, b, c) -> write(ok(u)) ; write(bad(u)) ), nl,
    ( if(x, y, z) -> write(bad(v)) ; write(ok(v)) ), nl,
    G = if(a, b, c), ( call(G) -> write(ok(w)) ; write(bad(w)) ), nl,
    halt.
