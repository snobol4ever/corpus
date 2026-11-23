```pascal
{$mode objfpc}
program board;
var
  a: array [1..8] of boolean;
  b: array [2..16] of boolean;
  c: array [-7..7] of boolean;
  x: array [1..8] of integer;
  found: integer;
procedure print;
var k: integer;
begin
  found := found + 1;
  write('solution ', found, ':');
  for k := 1 to 8 do
    write(x[k]: 3);
  writeln
end;
procedure place(i: integer);
var j: integer;
begin
  for j := 1 to 8 do
    if a[j] and b[i+j] and c[i-j] then
    begin
      x[i] := j;
      a[j] := false; b[i+j] := false; c[i-j] := false;
      if i < 8 then place(i+1) else print;
      a[j] := true; b[i+j] := true; c[i-j] := true
    end
end;
begin
end.
```

```pascal
{$mode objfpc}
program run;
var
  a: array [1..8] of boolean; external;
  b: array [2..16] of boolean; external;
  c: array [-7..7] of boolean; external;
  found: integer; external;
var i: integer;
begin
  found := 0;
  for i := 1 to 8 do a[i] := true;
  for i := 2 to 16 do b[i] := true;
  for i := -7 to 7 do c[i] := true;
  place(1);
  writeln('total ', found)
end.
```
