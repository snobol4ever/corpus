```raku
sub TWICE($n) { $n * 2 }
sub SHOUT($s) { $s ~ '!' }
```

```icon
global TWICE, SHOUT;
procedure main();
  write("twice ", TWICE(7));
  write("shout ", SHOUT("seven"));
end
```
