```prolog
'TWICE'(N, R) :- R is N * 2.
'SHOUT'(S, R) :- atom_concat(S, '!', R).
```

```raku
sub TWICE($n) { ... }
sub SHOUT($s) { ... }
say "twice {TWICE(7)}";
say "shout {SHOUT('seven')}";
```
