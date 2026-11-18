```icon
global SEQ
procedure main();
  SEQ := [10, 20, 30];
end
```

```prolog
:- nb_getval('SEQ', S), length(S, N), write('size '), write(N), nl, nth1(2, S, E), write('second '), write(E), nl.
:- nb_setval('BACK', [40, 50, 60]).
```

```icon
global BACK
procedure main();
  write("back size ", *BACK);
  write("back second ", BACK[2]);
end
```
