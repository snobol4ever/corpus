```snobol4
	N = 5
	NM1 = N - 1; NP1 = N + 1; NSZ = N * NP1; &STLIMIT = 10 ** 9; &ANCHOR = 1
	TEST = BREAK('Q') 'Q' (ARBNO(LEN(N) '-') LEN(N) 'Q'
+	      | ARBNO(LEN(NP1) '-') LEN(NP1) 'Q'
+	      | ARBNO(LEN(NM1) '-') LEN(NM1) 'Q')
	P = LEN(NM1) . X LEN(1); L = 'Q' DUPL('-',NM1) ' '
```

```snobol4
	DEFINE('SOLVE(B)I')                         :(SOLVE_END)
SOLVE	EQ(SIZE(B),NSZ) 	    :S(PRINT)
	B = L B
LOOP	I = LT(I,N) I + 1 :F(RETURN)
	B TEST :S(NEXT)
	SOLVE(B)
NEXT	B P = '-' X :(LOOP)
PRINT	SOLUTION = SOLUTION + 1
	OUTPUT = 'Solution number ' SOLUTION ' is:'
PRTLOOP B LEN(NP1) . OUTPUT = :S(PRTLOOP)F(RETURN)
SOLVE_END
```

```snobol4
	SOLVE()
	OUTPUT = SOLUTION ' solutions of ' N ' queens'
END
```

