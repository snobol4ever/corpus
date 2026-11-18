```prolog
:- nb_setval('SEQ', [10, 20, 30]).
```

```snobol4
        OUTPUT = 'size ' PROTOTYPE(SEQ)
        OUTPUT = 'second ' SEQ[2]
        BACK = ARRAY(3)
        BACK[1] = 40
        BACK[2] = 50
        BACK[3] = 60
END
```

```prolog
:- nb_getval('BACK', S), length(S, N), write('back size '), write(N), nl, nth1(2, S, E), write('back second '), write(E), nl.
```
