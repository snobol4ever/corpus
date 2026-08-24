program nestrec1;
type
  inner = record a, b: integer end;
  outer = record x: integer; c: inner; y: integer end;
var g: outer;
begin
  g.x := 1;
  g.c.a := 42;
  g.c.b := 7;
  g.y := 99;
  writeln(g.x);
  writeln(g.c.a);
  writeln(g.c.b);
  writeln(g.y)
end.
