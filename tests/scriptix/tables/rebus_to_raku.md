```rebus
function main()
  TAB := TABLE()
  TAB["one"] := 1
  TAB["two"] := 2
end
```

```raku
our $TAB;
our $BACK;
say "one {$TAB<one>}";
say "two {$TAB<two>}";
$BACK = {three => 3, four => 4};
```

```rebus
function main()
  OUTPUT := "back three " || BACK["three"]
  OUTPUT := "back four " || BACK["four"]
end
```
