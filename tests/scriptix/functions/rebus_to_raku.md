```rebus
function TWICE(n)
  return n * 2
end
function SHOUT(s)
  return s || "!"
end
function main()
end
```

```raku
sub TWICE($n) { ... }
sub SHOUT($s) { ... }
say "twice {TWICE(7)}";
say "shout {SHOUT('seven')}";
```
