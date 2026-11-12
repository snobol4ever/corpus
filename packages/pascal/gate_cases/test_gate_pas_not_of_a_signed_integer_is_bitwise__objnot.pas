program objnot;
{$mode objfpc}
var a, b: integer; p, q: boolean; l: longint;
begin
  a := 10; b := 12; p := true; q := a > b; l := -5;
  writeln(not a, not (a + b), not (a and b), not 0, not l);
  writeln(not p, not q, not (a > b), not (p and q), not odd(a));
  if not (a = b) then writeln('ne');
  if not p or not q then writeln('either')
end.
