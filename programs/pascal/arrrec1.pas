program arrrec2;
type rec = record a, b: integer end;
var d: array[0..3] of rec;
    i: integer;
begin
  for i := 0 to 3 do begin d[i].a := i * 10; d[i].b := i + 100 end;
  for i := 0 to 3 do writeln(d[i].a, d[i].b)
end.
