```snobol4
        DEFINE('EMIT()')
        DEFINE('PSH()')
        DEFINE('DRF(nm)')
        DEFINE('ADD()')
        DEFINE('SUB()')
        DEFINE('MUL()')
        DEFINE('DIV()')
        DEFINE('SGN()p1')                       :(FNS_end)
EMIT    OUTPUT = DRF(S[1])
        sp = 0
        EMIT = .dm                              :(NRETURN)
PSH     PSH = .S[sp = sp + 1]                   :(NRETURN)
DRF     DRF = nm
        nm POS(0) ANY(&LCASE) RPOS(0)           :F(RETURN)
        DRF = vars[nm]                          :(RETURN)
ADD     S[sp = sp - 1] = DRF(S[sp]) + DRF(S[sp + 1])
        ADD = .dm                               :(NRETURN)
SUB     S[sp = sp - 1] = DRF(S[sp]) - DRF(S[sp + 1])
        SUB = .dm                               :(NRETURN)
MUL     S[sp = sp - 1] = DRF(S[sp]) * DRF(S[sp + 1])
        MUL = .dm                               :(NRETURN)
DIV     S[sp = sp - 1] = DRF(S[sp]) / DRF(S[sp + 1])
        DIV = .dm                               :(NRETURN)
SGN     p1 = DRF(S[sp])
        p1 = IDENT(S[sp = sp - 1], '-') -p1
        S[sp] = p1
        SGN = .dm                               :(NRETURN)
FNS_end
```

```snobol4
        S = ARRAY(100)
        V = ANY(&LCASE) . *PSH()
        I = SPAN('0123456789') . *PSH()
        A = FENCE(V | I | '(' *X ')')
        F = FENCE(A | ANY('+-') . *PSH() *F . *SGN())
        T = F ARBNO('*' F . *MUL() | '/' F . *DIV())
        X = T ARBNO('+' T . *ADD() | '-' T . *SUB())
        eol = CHAR(10) FENCE
        C = POS(0) ARBNO(X eol (epsilon . *EMIT())) RPOS(0)
        &TRIM = 0
        vars = TABLE()
        vars['x'] = 1
        vars['y'] = 2
        vars['z'] = 3
```

```snobol4
        src = '2*(3+4)-5' CHAR(10) 'x+y*z' CHAR(10)
        src C                                   :F(bad)
        OUTPUT = 'matched'                      :(DONE)
bad     OUTPUT = 'Boo!'
DONE
END
```

