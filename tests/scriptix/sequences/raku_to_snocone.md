```raku
our $SEQ = [10, 20, 30];
```

```snocone
OUTPUT = 'size ' PROTOTYPE(SEQ);
OUTPUT = 'second ' SEQ[2];
BACK = ARRAY(3);
BACK[1] = 40;
BACK[2] = 50;
BACK[3] = 60;
```

```raku
our $BACK;
say "back size {$BACK.elems}";
say "back second {$BACK[1]}";
```
