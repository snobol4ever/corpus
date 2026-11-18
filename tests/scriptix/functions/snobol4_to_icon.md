```snobol4
        DEFINE('TWICE(n)')                     :(TWICE_END)
TWICE   TWICE = n * 2                          :(RETURN)
TWICE_END
        DEFINE('SHOUT(s)')                     :(SHOUT_END)
SHOUT   SHOUT = s '!'                          :(RETURN)
SHOUT_END
END
```

```icon
global TWICE, SHOUT;
procedure main();
  write("twice ", TWICE(7));
  write("shout ", SHOUT("seven"));
end
```
