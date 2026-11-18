```snocone
SEQ = ARRAY(3);
SEQ[1] = 10;
SEQ[2] = 20;
SEQ[3] = 30;
```

```icon
global SEQ, BACK
procedure main();
  write("size ", *SEQ);
  write("second ", SEQ[2]);
  BACK := [40, 50, 60];
end
```

```snocone
OUTPUT = 'back size ' PROTOTYPE(BACK);
OUTPUT = 'back second ' BACK[2];
```
