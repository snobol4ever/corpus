roots(N, Rs) :-
    succ(Pn, N), numlist(0, Pn, Ks),
    maplist(root(N), Ks, Rs).

root(N, M, R2) :-
    R0 is (2*M) rdiv N,  % multiple of PI
    (R0 > 1 -> R1 is R0 - 2; R1 = R0),  % adjust for principal values
    cis(R1, R2).

cis(0, 1) :- !.
cis(1, -1) :- !.
cis(1 rdiv 2, i) :- !.
cis(-1 rdiv 2, -i) :- !.
cis(-1 rdiv Q, exp(-i*pi/Q)) :- !.
cis(1 rdiv Q, exp(i*pi/Q)) :- !.
cis(P rdiv Q, exp(P*i*pi/Q)).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines roots/2 and never calls it; under swipl 9 rdiv yields a rational number (1r3) that cis/2's P rdiv Q heads never match, so roots/2 fails for every n >= 3 and the driver prints the roots for n = 1 and 2 only.
:- initialization(forall(between(1, 2, N), (roots(N, Rs), format("~w: ~w~n", [N, Rs])))).
