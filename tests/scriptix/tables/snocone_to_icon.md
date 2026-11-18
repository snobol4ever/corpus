```snocone
TAB = TABLE();
TAB['one'] = 1;
TAB['two'] = 2;
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

```snocone
OUTPUT = 'back three ' BACK['three'];
OUTPUT = 'back four ' BACK['four'];
```
