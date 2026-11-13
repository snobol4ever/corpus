program nest(output);
type inner = record a : array[1..3] of integer; n : integer end;
     outer = record k : integer; in1 : inner end;
var o : outer; i : integer;
begin o.k := 7; o.in1.n := 3; for i := 1 to 3 do o.in1.a[i] := i * 10; writeln(o.k, o.in1.n, o.in1.a[1], o.in1.a[3]) end.
