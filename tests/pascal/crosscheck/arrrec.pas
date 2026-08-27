{-------------------------------------------------------------------- 1 arrrec1}
program arrrec2;
type rec = record a, b: integer end;
var d: array[0..3] of rec;
    i: integer;
begin
  for i := 0 to 3 do begin d[i].a := i * 10; d[i].b := i + 100 end;
  for i := 0 to 3 do writeln(d[i].a, d[i].b)
end.
{-------------------------------------------------------------------- 2 arrrec2}
program arrrec2;
type rec = record a, b: integer end;
var d: array[0..3] of rec;
begin
  with d[2] do begin a := 7; b := 9 end;
  writeln(d[2].a); writeln(d[2].b)
end.
