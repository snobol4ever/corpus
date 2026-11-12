program recwith;
{$mode objfpc}
type tr = record s: integer; a: array[0..3] of integer end;
function Mk(n: integer): tr;
begin
  with Mk do begin s := n; a[2] := n + 1 end
end;
var r: tr;
begin
  r := Mk(5);
  writeln(r.s, ' ', r.a[2])
end.
