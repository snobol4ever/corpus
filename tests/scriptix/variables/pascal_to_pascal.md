```pascal
{$mode objfpc}
program define;
var COUNT: integer;
    WORD: string;
begin
  COUNT := 7;
  WORD := 'seven'
end.
```

```pascal
{$mode objfpc}
program use;
var COUNT: integer;
    WORD: string;
begin
  writeln('count ', COUNT);
  writeln('word ', WORD)
end.
```
