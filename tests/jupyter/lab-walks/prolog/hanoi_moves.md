# Towers of Hanoi with a moves record (Prolog, program 1 of the Lab walks)

The towers of hanoi of rosetta-prolog, with the moves counted by assertz and retract.

```prolog
:- dynamic moves/1.
moves(0).

record(From, To) :-
    retract(moves(N)),
    N1 is N + 1,
    assertz(moves(N1)),
    format("~d: ~w -> ~w~n", [N1, From, To]).
```

```prolog
hanoi(0, _, _, _) :- !.
hanoi(N, From, To, Via) :-
    M is N - 1,
    hanoi(M, From, Via, To),
    record(From, To),
    hanoi(M, Via, To, From).
```

```prolog
run(N) :-
    hanoi(N, left, right, centre),
    moves(Total),
    format("total: ~d~n", [Total]).

:- run(3).
```
