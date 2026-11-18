```prolog
:- nb_setval('SEQ', [10, 20, 30]).
```

```prolog
:- nb_getval('SEQ', S), length(S, N), write('size '), write(N), nl, nth1(2, S, E), write('second '), write(E), nl.
:- nb_setval('BACK', [40, 50, 60]).
```

```prolog
:- nb_getval('BACK', S), length(S, N), write('back size '), write(N), nl, nth1(2, S, E), write('back second '), write(E), nl.
```
