program nestcheck;
type
  inner = record a, b: integer end;
  outer = record x: integer; c: inner; y: integer end;
var g: outer;
    i: integer;
begin
  g.x := 10;
  g.c.a := 20;
  g.c.b := 30;
  g.y := 40;
  g.c.a := g.c.a + 1;
  g.c.b := g.c.b + 2;
  writeln(g.x);
  writeln(g.c.a);
  writeln(g.c.b);
  writeln(g.y)
end.
