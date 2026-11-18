```icon
global COUNT, WORD;
procedure main();
  COUNT := 7;
  WORD := "seven";
end
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
