```snobol4
        DEFINE('sortw(str)a,i,j')
        DEFINE('countw(str)')
        DEFINE('REV(S)C,R')                       :(DEFS_END)
sortw   a = ARRAY(SIZE(str))
sw1     i = i + 1; str LEN(1) . a[i] = :S(sw1)
        a = SORT(a)
sw2     j = j + 1; sortw = sortw a[j] :S(sw2)F(RETURN)
countw  str BREAK(' ') SPAN(' ') = :F(RETURN)
        countw = countw + 1 :(countw)
REV     S LEN(1) . C REM . R                      :F(RETURN)
        REV = REV(R) C                             :(RETURN)
DEFS_END
```

```snobol4
        DATA('GROUP(KEY,WORDS)')
        ana = TABLE()
        text = 'listen silent enlist google gogole inlets cat act tac '
more    text BREAK(' ') . wrd SPAN(' ') =         :F(count)
        sw = sortw(wrd); ana[sw] = ana[sw] wrd ' '
        cw = countw(ana[sw]); max = GT(cw,max) cw   :(more)
count   kv = CONVERT(ana,'ARRAY')
```

```snobol4
L3      j = j + 1; key = kv[j,1]; val = kv[j,2]   :F(DONE)
        G = GROUP(key, val)
        OUTPUT = EQ(countw(WORDS(G)),max) REV(KEY(G)) ': ' WORDS(G)  :(L3)
DONE    OUTPUT = 'largest group: ' max ' words'
END
```

