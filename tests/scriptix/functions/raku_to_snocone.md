```raku
sub TWICE($n) { $n * 2 }
sub SHOUT($s) { $s ~ '!' }
```

```snocone
OUTPUT = 'twice ' TWICE(7);
OUTPUT = 'shout ' SHOUT('seven');
```
