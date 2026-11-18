```prolog
:- nb_setval('SEQ', [10, 20, 30]).
```

```icon
global SEQ, BACK
procedure main();
  write("size ", *SEQ);
  write("second ", SEQ[2]);
  BACK := [40, 50, 60];
end
```

```prolog
:- nb_getval('BACK', S), length(S, N), write('back size '), write(N), nl, nth1(2, S, E), write('back second '), write(E), nl.
```
