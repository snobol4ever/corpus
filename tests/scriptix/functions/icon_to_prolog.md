```icon
procedure TWICE(n);
  return n * 2;
end
procedure SHOUT(s);
  return s || "!";
end
```

```prolog
:- 'TWICE'(7, R), write('twice '), write(R), nl.
:- 'SHOUT'(seven, R), write('shout '), write(R), nl.
```
