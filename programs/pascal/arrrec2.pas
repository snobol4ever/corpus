program arrrec2;
type rec = record a, b: integer end;
var d: array[0..3] of rec;
begin
  with d[2] do begin a := 7; b := 9 end;
  writeln(d[2].a); writeln(d[2].b)
end.
