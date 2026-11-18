```raku
our $TAB = {one => 1, two => 2};
```

```rebus
function main()
  OUTPUT := "one " || TAB["one"]
  OUTPUT := "two " || TAB["two"]
  BACK := TABLE()
  BACK["three"] := 3
  BACK["four"] := 4
end
```

```raku
our $BACK;
say "back three {$BACK<three>}";
say "back four {$BACK<four>}";
```
