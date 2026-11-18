```prolog
'TWICE'(N, R) :- R is N * 2.
'SHOUT'(S, R) :- atom_concat(S, '!', R).
```

```icon
global TWICE, SHOUT;
procedure main();
  write("twice ", TWICE(7));
  write("shout ", SHOUT("seven"));
end
```
