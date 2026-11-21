```pascal
{$mode objfpc}
program define;
var SEQ: array[1..3] of integer;
begin
  SEQ[1] := 10;
  SEQ[2] := 20;
  SEQ[3] := 30
end.
```

```raku
our $SEQ;
our $BACK;
say "size {$SEQ.elems}";
say "second {$SEQ[1]}";
$BACK = [40, 50, 60];
```

```pascal
{$mode objfpc}
program final;
var BACK: array[1..3] of integer; external name 'BACK';
begin
  writeln('back size ', high(BACK) - low(BACK) + 1);
  writeln('back second ', BACK[2])
end.
```
