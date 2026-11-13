program assign(output);
var s: integer; r: real; c: ansichar; a: array [1..3] of integer;
function f: integer; begin f := 41 end;
begin
  s := 1; s += 2; s -= 1; s *= 5; r := 9.0; r /= 2; a[2] := 3; a[2] += 4;
  writeln(s, ' ', r:0:2, ' ', a[2], ' ', f() + 1); writeln(); c := 'z'; writeln(c, ord(c))
end.
