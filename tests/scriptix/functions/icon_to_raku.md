```icon
procedure TWICE(n);
  return n * 2;
end
procedure SHOUT(s);
  return s || "!";
end
```

```raku
sub TWICE($n) { ... }
sub SHOUT($s) { ... }
say "twice {TWICE(7)}";
say "shout {SHOUT('seven')}";
```
