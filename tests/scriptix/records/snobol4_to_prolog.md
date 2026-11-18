```snobol4
        DATA('tree(t,v,n,c)')
        K = ARRAY(2)
        K[1] = tree('num', '1', 0)
        K[2] = tree('num', '2', 0)
        ROOT = tree('plus', '+', 2, K)
END
```

```prolog
:- nb_getval('ROOT', R), R = tree(T, _, N, [tree(_, V1, _, _), tree(_, V2, _, _)]), write('root '), write(T), write(' '), write(N), nl, write('leaves '), write(V1), write(' '), write(V2), nl.
:- nb_setval('BACK', tree(times, '*', 2, [tree(num, '3', 0, []), tree(num, '4', 0, [])])).
```

```snobol4
        OUTPUT = 'back ' t(BACK) ' ' n(BACK)
        K = c(BACK)
        OUTPUT = 'back leaves ' v(K[1]) ' ' v(K[2])
END
```
