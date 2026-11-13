a2(two).
a3(three).
:- initialization(( ( catch(a1(P), _, fail) -> write(p(P)) ; write(no_a1) ), nl,
                    ( catch(a2(Q), _, fail) -> write(q(Q)) ; write(no_a2) ), nl,
                    ( catch(a3(R), _, fail) -> write(r(R)) ; write(no_a3) ), nl )).
