```snobol4
        DEFINE('TWICE(n)')                     :(TWICE_END)
TWICE   TWICE = n * 2                          :(RETURN)
TWICE_END
        DEFINE('SHOUT(s)')                     :(SHOUT_END)
SHOUT   SHOUT = s '!'                          :(RETURN)
SHOUT_END
END
```

```raku
sub TWICE($n) { ... }
sub SHOUT($s) { ... }
say "twice {TWICE(7)}";
say "shout {SHOUT('seven')}";
```
