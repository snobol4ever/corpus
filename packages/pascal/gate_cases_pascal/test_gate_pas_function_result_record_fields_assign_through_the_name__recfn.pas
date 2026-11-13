program recfn;
{$mode objfpc}
type tr = record s: integer; a: array[0..3] of integer end;
function Mk(n: integer): tr;
begin
  Mk.s := n;
  Mk.a[3] := n * 3;
  if n > 4 then Mk.a[0] := 99
end;
var r: tr;
begin
  r := Mk(7);
  writeln(r.s, ' ', r.a[3], ' ', r.a[0])
end.
