program fmtown;
{$mode objfpc}
type tset = set of 0..9;
function format(k: integer; t: tset): integer;
var j, n: integer;
begin
  n := 0; for j := 0 to 9 do if j in t then n := n + j; format := n * k
end;
begin
  writeln(format(2, [1, 3, 5]), ' ', format(1, []))
end.
