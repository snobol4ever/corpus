program arr(output);
type e1 = (a0, a1, a2);
     t = record n: integer; case integer of 1: (f1: e1); 2: (f2: 0..2); end;
var v: array[1..3] of t; i: integer;
begin
  for i := 1 to 3 do begin v[i].n := i; v[i].f1 := a0; v[i].f2 := i - 1 end;
  for i := 1 to 3 do writeln(v[i].n, ' ', v[i].f2, ' ', ord(v[i].f1))
end.
