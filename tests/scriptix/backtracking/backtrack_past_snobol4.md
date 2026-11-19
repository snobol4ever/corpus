```prolog
'NEXT'(N, R) :- member(D, [1, 100]), R is N + D.
```

```snobol4
        DEFINE('STEP(N)')                      :(STEP_END)
STEP    OUTPUT = 'step ' N
        STEP = NEXT(N) * 10                    :(RETURN)
STEP_END
END
```

```prolog
pick(X, R) :- member(X, [1, 2, 3]), 'STEP'(X, R).
:- pick(X, R), R > 25, write('answer '), write(X), write(' '), write(R), nl.
:- findall(R, pick(_, R), L), write(L), nl.
```
