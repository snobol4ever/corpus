```snobol4
        DEFINE('TWICE(n)')                     :(TWICE_END)
TWICE   TWICE = n * 2                          :(RETURN)
TWICE_END
        DEFINE('SHOUT(s)')                     :(SHOUT_END)
SHOUT   SHOUT = s '!'                          :(RETURN)
SHOUT_END
END
```

```pascal
{$mode objfpc}
program use;
function TWICE(n: integer): integer; external name 'TWICE';
function SHOUT(s: string): string; external name 'SHOUT';
begin
  writeln('twice ', TWICE(7));
  writeln('shout ', SHOUT('seven'))
end.
```
