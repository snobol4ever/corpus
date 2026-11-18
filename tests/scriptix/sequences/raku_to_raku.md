```raku
our $SEQ = [10, 20, 30];
```

```raku
our $SEQ;
our $BACK;
say "size {$SEQ.elems}";
say "second {$SEQ[1]}";
$BACK = [40, 50, 60];
```

```raku
our $BACK;
say "back size {$BACK.elems}";
say "back second {$BACK[1]}";
```
