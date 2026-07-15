program t;
type r = record a, b: integer end;
var g: r;
procedure c(var f: r);
begin
  f.a := 1;
  f := g
end;
begin
  g.a := 5; g.b := 0;
  c(g);
  writeln(g.a)
end.
