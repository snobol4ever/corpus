program fldarr(output);
type inner = record a : array[1..3] of integer; n : integer end;
     outer = record k : integer; arr : array[1..2] of inner end;
var o : outer; i, j : integer;
begin for j := 1 to 2 do begin o.arr[j].n := j; for i := 1 to 3 do o.arr[j].a[i] := j * 100 + i end;
  for j := 1 to 2 do writeln(o.arr[j].n, o.arr[j].a[1], o.arr[j].a[3]) end.
