```snocone
SEQ = ARRAY(3);
SEQ[1] = 10;
SEQ[2] = 20;
SEQ[3] = 30;
```

```raku
our $SEQ;
our $BACK;
say "size {$SEQ.elems}";
say "second {$SEQ[1]}";
$BACK = [40, 50, 60];
```

```snocone
OUTPUT = 'back size ' PROTOTYPE(BACK);
OUTPUT = 'back second ' BACK[2];
```
