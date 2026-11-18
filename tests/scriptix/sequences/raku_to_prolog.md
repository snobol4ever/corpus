```raku
our $SEQ = [10, 20, 30];
```

```prolog
:- nb_getval('SEQ', S), length(S, N), write('size '), write(N), nl, nth1(2, S, E), write('second '), write(E), nl.
:- nb_setval('BACK', [40, 50, 60]).
```

```raku
our $BACK;
say "back size {$BACK.elems}";
say "back second {$BACK[1]}";
```
