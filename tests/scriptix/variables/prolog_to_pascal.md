```prolog
:- nb_setval('COUNT', 7).
:- nb_setval('WORD', seven).
```

```pascal
{$mode objfpc}
program use;
var COUNT: integer; external name 'COUNT';
    WORD: string; external name 'WORD';
begin
  writeln('count ', COUNT);
  writeln('word ', WORD)
end.
```
