```raku
class tree { has $.t; has $.v; has $.n; has $.c; }
```

```prolog
:- nb_setval('ROOT', tree(plus, '+', 2, [tree(num, '1', 0, []), tree(num, '2', 0, [])])).
```

```raku
class tree { has $.t; has $.v; has $.n; has $.c; }
our $ROOT;
our $BACK;
say "root {$ROOT.t} {$ROOT.n}";
say "leaves {$ROOT.c[0].v} {$ROOT.c[1].v}";
$BACK = tree.new(t => 'times', v => '*', n => 2, c => [tree.new(t => 'num', v => '3', n => 0), tree.new(t => 'num', v => '4', n => 0)]);
```

```prolog
:- nb_getval('BACK', R), R = tree(T, _, N, [tree(_, V1, _, _), tree(_, V2, _, _)]), write('back '), write(T), write(' '), write(N), nl, write('back leaves '), write(V1), write(' '), write(V2), nl.
```
