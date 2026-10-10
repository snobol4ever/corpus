pi_spigot :-
    pi(X),
    forall(member(Y, X), write(Y)).

pi(OUT) :-
    pi(1, 180, 60, 2, OUT).

pi(Q, R, T, I, OUT) :-
    freeze(OUT,
           (   OUT = [Digit | OUT_]
           ->  U is 3 * (3 * I + 1) * (3 * I + 2),
               Y is (Q * (27 * I - 12) + 5 * R) // (5 * T),
               Digit is Y,
               Q2 is 10 * Q * I * (2 * I - 1),
               R2 is 10 * U * (Q * (5 * I - 2) + R - Y * T),
               T2 is T * U,
               I2 is I + 1,
               pi(Q2, R2, T2, I2, OUT_)
           ;   true)).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): pi_spigot/0 writes digits of pi forever; the driver takes the first 100 digits of the same lazy list, pi/1, and writes them as pi_spigot/0 does.
:- initialization((pi(X), length(Ds, 100), append(Ds, _, X), forall(member(D, Ds), write(D)), nl)).
