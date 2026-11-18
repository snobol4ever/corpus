```raku
class tree { has $.t; has $.v; has $.n; has $.c; }
our $ROOT = tree.new(t => 'plus', v => '+', n => 2, c => [tree.new(t => 'num', v => '1', n => 0), tree.new(t => 'num', v => '2', n => 0)]);
```

```prolog
:- nb_getval('ROOT', R), R = tree(T, _, N, [tree(_, V1, _, _), tree(_, V2, _, _)]), write('root '), write(T), write(' '), write(N), nl, write('leaves '), write(V1), write(' '), write(V2), nl.
:- nb_setval('BACK', tree(times, '*', 2, [tree(num, '3', 0, []), tree(num, '4', 0, [])])).
```

```raku
our $BACK;
say "back {$BACK.t} {$BACK.n}";
say "back leaves {$BACK.c[0].v} {$BACK.c[1].v}";
```
