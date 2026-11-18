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

```icon
global COUNT, WORD
procedure main();
  write("count ", COUNT);
  write("word ", WORD);
end
```
