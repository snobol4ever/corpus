```icon
global TAB
procedure main();
  TAB := table();
  TAB["one"] := 1;
  TAB["two"] := 2;
end
```

```raku
our $TAB;
our $BACK;
say "one {$TAB<one>}";
say "two {$TAB<two>}";
$BACK = {three => 3, four => 4};
```

```icon
global BACK
procedure main();
  write("back three ", BACK["three"]);
  write("back four ", BACK["four"]);
end
```
