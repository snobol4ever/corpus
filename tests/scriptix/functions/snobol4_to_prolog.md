```snobol4
        DEFINE('TWICE(n)')                     :(TWICE_END)
TWICE   TWICE = n * 2                          :(RETURN)
TWICE_END
        DEFINE('SHOUT(s)')                     :(SHOUT_END)
SHOUT   SHOUT = s '!'                          :(RETURN)
SHOUT_END
END
```

```prolog
:- 'TWICE'(7, R), write('twice '), write(R), nl.
:- 'SHOUT'(seven, R), write('shout '), write(R), nl.
```
