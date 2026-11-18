```icon
global TAB
procedure main();
  TAB := table();
  TAB["one"] := 1;
  TAB["two"] := 2;
end
```

```snobol4
        OUTPUT = 'one ' TAB['one']
        OUTPUT = 'two ' TAB['two']
        BACK = TABLE()
        BACK['three'] = 3
        BACK['four'] = 4
END
```

```icon
global BACK
procedure main();
  write("back three ", BACK["three"]);
  write("back four ", BACK["four"]);
end
```
