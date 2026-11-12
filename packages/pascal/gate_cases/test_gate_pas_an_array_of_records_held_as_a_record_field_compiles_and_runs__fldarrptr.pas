program fldarrptr(output);
type inner = record a : array[1..3] of integer; n : integer end;
     outer = record k : integer; arr : array[1..2] of inner end;
     po = ^outer;
var p : po; i, j : integer;
begin new(p); p^.k := 9; for j := 1 to 2 do begin p^.arr[j].n := j; for i := 1 to 3 do p^.arr[j].a[i] := j * 100 + i end;
  for j := 1 to 2 do writeln(p^.k, p^.arr[j].n, p^.arr[j].a[1], p^.arr[j].a[2], p^.arr[j].a[3]) end.
