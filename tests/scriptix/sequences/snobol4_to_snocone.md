```snobol4
        SEQ = ARRAY(3)
        SEQ[1] = 10
        SEQ[2] = 20
        SEQ[3] = 30
END
```

```snocone
OUTPUT = 'size ' PROTOTYPE(SEQ);
OUTPUT = 'second ' SEQ[2];
BACK = ARRAY(3);
BACK[1] = 40;
BACK[2] = 50;
BACK[3] = 60;
```

```snobol4
        OUTPUT = 'back size ' PROTOTYPE(BACK)
        OUTPUT = 'back second ' BACK[2]
END
```
