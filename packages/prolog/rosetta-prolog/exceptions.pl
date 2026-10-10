foo(X) :-
    \+ integer(X),
    throw(b('not even an int')).
foo(X) :-
    \+ between(1,10,X),
    throw(a('must be between 1 & 10')).
foo(X) :-
    format('~p is a valid number~n', X).

go(X) :-
    catch(
        foo(X),
        E,
        handle(E)).

handle(a(Msg)) :-
    format('~w~n', Msg),
    !.
handle(X) :- throw(X).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines go/1 (foo/1 under catch/3 with handle/1) and never calls it; the driver calls it on a valid number, on one out of range (caught and handled) and on an atom (rethrown, caught by the driver).
:- initialization((go(5), go(42), catch(go(abc), E, format("go(abc) rethrew ~w~n", [E])))).
