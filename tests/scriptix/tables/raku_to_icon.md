```raku
our $TAB = {one => 1, two => 2};
```

```icon
global TAB, BACK
procedure main();
  write("one ", TAB["one"]);
  write("two ", TAB["two"]);
  BACK := table();
  BACK["three"] := 3;
  BACK["four"] := 4;
end
```

```raku
our $BACK;
say "back three {$BACK<three>}";
say "back four {$BACK<four>}";
```
