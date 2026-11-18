```prolog
'TWICE'(N, R) :- R is N * 2.
'SHOUT'(S, R) :- atom_concat(S, '!', R).
```

```snobol4
        OUTPUT = 'twice ' TWICE(7)
        OUTPUT = 'shout ' SHOUT('seven')
END
```
