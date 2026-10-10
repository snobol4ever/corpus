egcd(_, 0, 1, 0) :- !.
egcd(A, B, X, Y) :-
    divmod(A, B, Q, R),
    egcd(B, R, S, X),
    Y is S - Q*X.

modinv(A, B, N) :-
    egcd(A, B, X, Y),
    A*X + B*Y =:= 1,
    N is X mod B.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines modinv/3 and never calls it; the driver prints the task's inverse of 42 modulo 2017.
:- initialization((modinv(42, 2017, N), format("~w~n", [N]))).
