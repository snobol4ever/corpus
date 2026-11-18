```icon
record tree(t, v, n, c)
global ROOT
procedure main();
  ROOT := tree("plus", "+", 2, [tree("num", "1", 0), tree("num", "2", 0)]);
end
```

```prolog
:- nb_getval('ROOT', R), R = tree(T, _, N, [tree(_, V1, _, _), tree(_, V2, _, _)]), write('root '), write(T), write(' '), write(N), nl, write('leaves '), write(V1), write(' '), write(V2), nl.
:- nb_setval('BACK', tree(times, '*', 2, [tree(num, '3', 0, []), tree(num, '4', 0, [])])).
```

```icon
record tree(t, v, n, c)
global BACK
procedure main();
  write("back ", BACK.t, " ", BACK.n);
  write("back leaves ", BACK.c[1].v, " ", BACK.c[2].v);
end
```
