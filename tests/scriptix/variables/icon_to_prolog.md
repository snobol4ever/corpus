```icon
global COUNT, WORD;
procedure main();
  COUNT := 7;
  WORD := "seven";
end
```

```prolog
:- nb_getval('COUNT', C), write('count '), write(C), nl.
:- nb_getval('WORD', W), write('word '), write(W), nl.
```
