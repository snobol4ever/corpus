program caller(output);
var a: real;
function half(x: real): real;
begin x := x / 2.0; half := x + 1.0 end;
procedure bump(r: real; k: integer);
begin r := r + k; k := k * 2; writeln(r:6:2, k:3) end;
begin
  a := 3.0;
  writeln(half(a):6:2, a:6:2);
  bump(a, 4);
  writeln(a:6:2)
end.
