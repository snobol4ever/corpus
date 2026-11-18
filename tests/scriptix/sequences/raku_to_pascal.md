```raku
our $SEQ = [10, 20, 30];
```

```pascal
{$mode objfpc}
program use;
var SEQ: array[1..3] of integer; external name 'SEQ';
    BACK: array[1..3] of integer; external name 'BACK';
begin
  writeln('size ', high(SEQ) - low(SEQ) + 1);
  writeln('second ', SEQ[2]);
  BACK[1] := 40;
  BACK[2] := 50;
  BACK[3] := 60
end.
```

```raku
our $BACK;
say "back size {$BACK.elems}";
say "back second {$BACK[1]}";
```
