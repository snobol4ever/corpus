```raku
our $COUNT = 7;
our $WORD = 'seven';
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
