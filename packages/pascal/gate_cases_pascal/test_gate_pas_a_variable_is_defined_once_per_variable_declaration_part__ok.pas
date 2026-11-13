program dupctl(output);
type rec = record i: integer; j: integer end;
var i: integer; r: rec;
procedure p(i: integer);
var j: integer;
  procedure q;
  var i: integer;
  begin i := 7; writeln('nested ', i) end;
begin j := i * 2; writeln('param ', i, ' local ', j); q end;
procedure s;
var i, k: integer;
begin i := 3; k := 4; writeln('local ', i + k) end;
begin
  i := 1; r.i := 5; r.j := 6;
  p(i); s;
  writeln('global ', i, ' field ', r.i, ' ', r.j)
end.
