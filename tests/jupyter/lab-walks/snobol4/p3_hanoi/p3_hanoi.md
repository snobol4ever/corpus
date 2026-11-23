```snobol4
        DEFINE('HANOI(N,NS,ND,NI)')                :(HANOI_END)
HANOI   EQ(N, 0)                                   :S(RETURN)
        HANOI(N - 1, NS, NI, ND)
        MOVES = MOVES + 1
        T[MOVES] = MOVE(N, NS, ND)
        OUTPUT = 'MOVE DISC ' N ' FROM ' NS ' TO ' ND
        HANOI(N - 1, NI, ND, NS)                   :(RETURN)
HANOI_END
```

```snobol4
        DATA('MOVE(DISC,FROM,TO)')
        DEFINE('SOLVE(K)')                         :(SOLVE_END)
SOLVE   MOVES = 0
        T = TABLE()
        HANOI(K, 'A', 'C', 'B')
        SOLVE = MOVES                              :(RETURN)
SOLVE_END
```

```snobol4
        OUTPUT = 'moves: ' SOLVE(2)
        OUTPUT = 'moves: ' SOLVE(3)
        OUTPUT = 'last: ' DISC(T[MOVES]) ' ' FROM(T[MOVES]) ' -> ' TO(T[MOVES])
END
```

