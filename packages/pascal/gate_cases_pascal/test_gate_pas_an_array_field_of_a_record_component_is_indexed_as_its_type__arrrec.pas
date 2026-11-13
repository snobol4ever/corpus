program arrrec(output);
type inner = record a : array[1..3] of integer; n : integer end;
var v : array[1..2] of inner; i, j : integer;
begin for j := 1 to 2 do begin v[j].n := j; for i := 1 to 3 do v[j].a[i] := j * 100 + i end;
  for j := 1 to 2 do writeln(v[j].n, v[j].a[1], v[j].a[3]) end.
