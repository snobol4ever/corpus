```rebus
function main()
  SEQ := ARRAY(3)
  SEQ[1] := 10
  SEQ[2] := 20
  SEQ[3] := 30
end
```

```pascal
{$mode objfpc}
program use;
var SEQ: array[1..3] of integer; external name 'SEQ';
    BACK: array[1..3] of integer;
begin
  writeln('size ', high(SEQ) - low(SEQ) + 1);
  writeln('second ', SEQ[2]);
  BACK[1] := 40;
  BACK[2] := 50;
  BACK[3] := 60
end.
```

```rebus
function main()
  OUTPUT := "back size " || PROTOTYPE(BACK)
  OUTPUT := "back second " || BACK[2]
end
```
