:- initialization(main).
c(A, T) :- term_to_atom(T, A).
main :- c('w1 :- assert(zz(a)), assert(zz(b)), assert(zz(c)), fail', W1), c('r1 :- findall(Y, zz(Y), L), write(L), nl', R1),
        c('w2 :- assert(yy(a)), assert(yy(b)), assert(yy(c)), fail', W2), c('r2 :- findall(Y, yy(Y), L), write(L), nl', R2),
        c('w3 :- assert(xx(a)), assert(xx(b)), assert(xx(c)), fail', W3), c('r3 :- findall(Y, xx(Y), L), write(L), nl', R3),
        assertz(W1), assertz(R1), ( w1 ; true ), r1,
        assertz(W2), ( w2 ; true ), assertz(R2), r2,
        assertz(R3), assertz(W3), ( w3 ; true ), r3,
        consult('two.pl'), t, halt.
