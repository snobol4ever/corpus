```prolog
:- nb_setval('ROOT', tree(plus, '+', 2, [tree(num, '1', 0, []), tree(num, '2', 0, [])])).
```

```prolog
:- nb_getval('ROOT', R), R = tree(T, _, N, [tree(_, V1, _, _), tree(_, V2, _, _)]), write('root '), write(T), write(' '), write(N), nl, write('leaves '), write(V1), write(' '), write(V2), nl.
:- nb_setval('BACK', tree(times, '*', 2, [tree(num, '3', 0, []), tree(num, '4', 0, [])])).
```

```prolog
:- nb_getval('BACK', R), R = tree(T, _, N, [tree(_, V1, _, _), tree(_, V2, _, _)]), write('back '), write(T), write(' '), write(N), nl, write('back leaves '), write(V1), write(' '), write(V2), nl.
```
