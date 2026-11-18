```prolog
:- nb_setval('COUNT', 7).
:- nb_setval('WORD', seven).
```

```prolog
:- nb_getval('COUNT', C), write('count '), write(C), nl.
:- nb_getval('WORD', W), write('word '), write(W), nl.
```
