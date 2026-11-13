program ufld(output);
const n = 3;
procedure p;
const k = n;
type r = record n: integer end;
var x: r;
begin
  x.n := k + 1; writeln(x.n, k)
end;
begin
  p
end.
