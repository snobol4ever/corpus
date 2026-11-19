```prolog
'NEXT'(N, R) :- member(D, [1, 100]), R is N + D.
```

```icon
global NEXT
procedure STEP(n);
  write("step ", n);
  return NEXT(n) * 10;
end
```

```prolog
pick(X, R) :- member(X, [1, 2, 3]), 'STEP'(X, R).
:- pick(X, R), R > 25, write('answer '), write(X), write(' '), write(R), nl.
:- findall(R, pick(_, R), L), write(L), nl.
```
