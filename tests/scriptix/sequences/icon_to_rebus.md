```icon
global SEQ
procedure main();
  SEQ := [10, 20, 30];
end
```

```rebus
function main()
  OUTPUT := "size " || PROTOTYPE(SEQ)
  OUTPUT := "second " || SEQ[2]
  BACK := ARRAY(3)
  BACK[1] := 40
  BACK[2] := 50
  BACK[3] := 60
end
```

```icon
global BACK
procedure main();
  write("back size ", *BACK);
  write("back second ", BACK[2]);
end
```
