```icon
global SEQ
procedure main();
  SEQ := [10, 20, 30];
end
```

```icon
global SEQ, BACK
procedure main();
  write("size ", *SEQ);
  write("second ", SEQ[2]);
  BACK := [40, 50, 60];
end
```

```icon
global BACK
procedure main();
  write("back size ", *BACK);
  write("back second ", BACK[2]);
end
```
