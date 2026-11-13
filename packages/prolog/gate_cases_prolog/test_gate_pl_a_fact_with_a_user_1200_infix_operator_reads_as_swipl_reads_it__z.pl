:- op(1200, xfx, ===>).
:- op(1200, xfy, ====>).
a ===> b.
c ===> (d, e).
p ====> q ====> r.
x :- true.
y.
main :- forall(clause(===>(X, Y), true), (writeq(X-Y), nl)), forall(clause(====>(X, Y), true), (write_canonical(X-Y), nl)), x, y, write(done), nl.
:- initialization(main).
