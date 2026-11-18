```rebus
function TWICE(n)
  return n * 2
end
function SHOUT(s)
  return s || "!"
end
function main()
end
```

```prolog
:- 'TWICE'(7, R), write('twice '), write(R), nl.
:- 'SHOUT'(seven, R), write('shout '), write(R), nl.
```
