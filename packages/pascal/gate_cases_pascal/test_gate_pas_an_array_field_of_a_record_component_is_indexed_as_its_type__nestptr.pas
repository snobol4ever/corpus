program nestptr(output);
type inner = record a : array[1..3] of integer; n : integer end;
     outer = record k : integer; in1 : inner end;
     po = ^outer;
var p : po; i : integer;
begin new(p); p^.k := 7; p^.in1.n := 3; for i := 1 to 3 do p^.in1.a[i] := i * 10;
  writeln(p^.k, p^.in1.n, p^.in1.a[1], p^.in1.a[2], p^.in1.a[3]) end.
