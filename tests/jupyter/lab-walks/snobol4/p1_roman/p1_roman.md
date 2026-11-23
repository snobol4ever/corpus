```snobol4
        DEFINE('ROMAN(N)UNITS')                   :(ROMAN_END)
ROMAN   N RPOS(1) LEN(1) . UNITS =                :F(RETURN)
        '0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,' UNITS BREAK(',') . UNITS  :F(FRETURN)
        ROMAN = REPLACE(ROMAN(N),'IVXLCDM','XLCDM**') UNITS  :S(RETURN)F(FRETURN)
ROMAN_END
```

```snobol4
        DEFINE('TEST(I,J)')                       :(TEST_END)
TEST    OUTPUT = I ' -> ' ROMAN(I)
        EQ(I,J)                                   :S(RETURN)
        I = I + 1                                 :(TEST)
TEST_END
        DATA('NUM(VAL,ROM)')
```

```snobol4
        TEST(1,3)
        TEST(14,15)
        R = NUM(49, ROMAN(49))
        OUTPUT = VAL(R) ' is ' ROM(R)
END
```

