```icon
global TAB
procedure main();
  TAB := table();
  TAB["one"] := 1;
  TAB["two"] := 2;
end
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

```icon
global BACK
procedure main();
  write("back three ", BACK["three"]);
  write("back four ", BACK["four"]);
end
```
