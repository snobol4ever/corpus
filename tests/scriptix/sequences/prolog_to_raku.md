```prolog
:- nb_setval('SEQ', [10, 20, 30]).
```

```raku
our $SEQ;
our $BACK;
say "size {$SEQ.elems}";
say "second {$SEQ[1]}";
$BACK = [40, 50, 60];
```

```prolog
:- nb_getval('BACK', S), length(S, N), write('back size '), write(N), nl, nth1(2, S, E), write('back second '), write(E), nl.
```
