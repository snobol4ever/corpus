```raku
our $SEQ = [10, 20, 30];
```

```icon
global SEQ, BACK
procedure main();
  write("size ", *SEQ);
  write("second ", SEQ[2]);
  BACK := [40, 50, 60];
end
```

```raku
our $BACK;
say "back size {$BACK.elems}";
say "back second {$BACK[1]}";
```
