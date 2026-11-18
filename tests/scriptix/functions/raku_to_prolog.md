```raku
sub TWICE($n) { $n * 2 }
sub SHOUT($s) { $s ~ '!' }
```

```prolog
:- 'TWICE'(7, R), write('twice '), write(R), nl.
:- 'SHOUT'(seven, R), write('shout '), write(R), nl.
```
