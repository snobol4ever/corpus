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

```pascal
{$mode objfpc}
program use;
var SEQ: array[1..3] of integer;
    BACK: array[1..3] of integer;
begin
  writeln('size ', high(SEQ) - low(SEQ) + 1);
  writeln('second ', SEQ[2]);
  BACK[1] := 40;
  BACK[2] := 50;
  BACK[3] := 60
end.
```

```pascal
{$mode objfpc}
program final;
var BACK: array[1..3] of integer;
begin
  writeln('back size ', high(BACK) - low(BACK) + 1);
  writeln('back second ', BACK[2])
end.
```
