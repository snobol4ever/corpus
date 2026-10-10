exp_recursive(Base, NegExp, NegPower) :-
    NegExp < 0,
    Exp is NegExp * -1,
    exp_recursive_(Base, Exp, Base, Power),
    NegPower is 1 / Power.
exp_recursive(Base, Exp, Power) :-
    Exp > 0,
    exp_recursive_(Base, Exp, Base, Power).
exp_recursive(_, 0, 1).

exp_recursive_(_,    1,   Power, Power).
exp_recursive_(Base, Exp, Acc,   Power)   :-
    Exp > 1,
    NewAcc is Base * Acc,
    NewExp is Exp  - 1,
    exp_recursive_(Base, NewExp, NewAcc, Power).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines exp_recursive/3 and never calls it; the driver raises the task's 2 and 2.5 to 3 and -3 (the examples of exponentiation-operator-3) and 2 to 0.
:- initialization(forall(member(B-E, [2-3, 2-(-3), 2.5-3, 2.5-(-3), 2-0]), (once(exp_recursive(B, E, P)), format("~w ^ ~w = ~w~n", [B, E, P])))).
