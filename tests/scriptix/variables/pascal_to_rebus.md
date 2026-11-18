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

```rebus
function main()
  OUTPUT := "count " || COUNT
  OUTPUT := "word " || WORD
end
```
