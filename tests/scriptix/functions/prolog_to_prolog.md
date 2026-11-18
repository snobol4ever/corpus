```prolog
'TWICE'(N, R) :- R is N * 2.
'SHOUT'(S, R) :- atom_concat(S, '!', R).
```

```prolog
:- 'TWICE'(7, R), write('twice '), write(R), nl.
:- 'SHOUT'(seven, R), write('shout '), write(R), nl.
```
