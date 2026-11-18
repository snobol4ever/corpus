```snobol4
        TAB = TABLE()
        TAB['one'] = 1
        TAB['two'] = 2
END
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

```snobol4
        OUTPUT = 'back three ' BACK['three']
        OUTPUT = 'back four ' BACK['four']
END
```
