```raku
sub TWICE($n) { $n * 2 }
sub SHOUT($s) { $s ~ '!' }
```

```raku
say "twice {TWICE(7)}";
say "shout {SHOUT('seven')}";
```
