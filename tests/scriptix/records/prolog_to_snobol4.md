```prolog
:- nb_setval('ROOT', tree(plus, '+', 2, [tree(num, '1', 0, []), tree(num, '2', 0, [])])).
```

```snobol4
        DATA('tree(t,v,n,c)')
        OUTPUT = 'root ' t(ROOT) ' ' n(ROOT)
        K = c(ROOT)
        OUTPUT = 'leaves ' v(K[1]) ' ' v(K[2])
        J = ARRAY(2)
        J[1] = tree('num', '3', 0)
        J[2] = tree('num', '4', 0)
        BACK = tree('times', '*', 2, J)
END
```

```prolog
:- nb_getval('BACK', R), R = tree(T, _, N, [tree(_, V1, _, _), tree(_, V2, _, _)]), write('back '), write(T), write(' '), write(N), nl, write('back leaves '), write(V1), write(' '), write(V2), nl.
```
