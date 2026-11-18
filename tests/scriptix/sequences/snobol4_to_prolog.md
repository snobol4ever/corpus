```snobol4
        SEQ = ARRAY(3)
        SEQ[1] = 10
        SEQ[2] = 20
        SEQ[3] = 30
END
```

```prolog
:- nb_getval('SEQ', S), length(S, N), write('size '), write(N), nl, nth1(2, S, E), write('second '), write(E), nl.
:- nb_setval('BACK', [40, 50, 60]).
```

```snobol4
        OUTPUT = 'back size ' PROTOTYPE(BACK)
        OUTPUT = 'back second ' BACK[2]
END
```
