div(A, B, C, Ex) :-
    catch((C is A/B), Ex, (C = infinity)).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines div/4 and never calls it; the driver divides 10 by 2 and 7 and 7.0 by zero and prints the result and the caught error (its formal term only, the context holds a variable).
:- initialization(forall(member(A/B, [10/2, 7/0, 7.0/0]), (div(A, B, C, Ex), (var(Ex) -> format("~w/~w = ~w~n", [A, B, C]) ; Ex = error(E, _), format("~w/~w = ~w (caught ~w)~n", [A, B, C, E]))))).
