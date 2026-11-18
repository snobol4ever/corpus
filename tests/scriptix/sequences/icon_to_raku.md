```icon
global SEQ
procedure main();
  SEQ := [10, 20, 30];
end
```

```raku
our $SEQ;
our $BACK;
say "size {$SEQ.elems}";
say "second {$SEQ[1]}";
$BACK = [40, 50, 60];
```

```icon
global BACK
procedure main();
  write("back size ", *BACK);
  write("back second ", BACK[2]);
end
```
