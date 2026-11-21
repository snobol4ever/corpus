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

```rebus
function main()
  OUTPUT := "size " || PROTOTYPE(SEQ)
  OUTPUT := "second " || SEQ[2]
  BACK := ARRAY(3)
  BACK[1] := 40
  BACK[2] := 50
  BACK[3] := 60
end
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
