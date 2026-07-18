% derive — symbolic differentiation driver (van Roy / Aquarius suite).
% Runs three classic derivative problems together: ops8 (a polynomial-product
% derivative), log10 (a 10-deep nested log derivative), and divide10 (a 10-deep
% nested quotient derivative), each via the shared d/3 rule set with structure-
% building heads and a per-clause cut. Source: SWI-Prolog/bench. Succeeds once;
% prints ok as the deterministic result signature.
:- initialization(main).
bench__main :- ( top -> write(ok) ; write(failed) ), nl.
top :- ops8, log10, divide10.
ops8 :- d((x+1)*((^(x,2)+2)*(^(x,3)+3)), x, _).
log10 :- d(log(log(log(log(log(log(log(log(log(log(x)))))))))), x, _).
divide10 :- d(((((((((x/x)/x)/x)/x)/x)/x)/x)/x)/x, x, _).
d(U+V, X, DU+DV) :- !, d(U, X, DU), d(V, X, DV).
d(U-V, X, DU-DV) :- !, d(U, X, DU), d(V, X, DV).
d(U*V, X, DU*V+U*DV) :- !, d(U, X, DU), d(V, X, DV).
d(U/V, X, (DU*V-U*DV)/(^(V,2))) :- !, d(U, X, DU), d(V, X, DV).
d(^(U,N), X, DU*N*(^(U,N1))) :- !, integer(N), N1 is N - 1, d(U, X, DU).
d(-U, X, -DU) :- !, d(U, X, DU).
d(exp(U), X, exp(U)*DU) :- !, d(U, X, DU).
d(log(U), X, DU/U) :- !, d(U, X, DU).
d(X, X, 1) :- !.
d(_, _, 0).
main :- l__(65536).
l__(N__) :- between(1, N__, _), bench__main, fail.
l__(_).
