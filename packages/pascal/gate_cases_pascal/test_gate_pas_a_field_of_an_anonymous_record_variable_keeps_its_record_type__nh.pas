program nh(output);
type q = record a, b: integer end;
var g, h: record x: integer; c: q end;
begin
  g.c.a := 4; g.c.b := 5; h.c.a := g.c.b; h.c.b := g.c.a + h.c.a;
  writeln(h.c.a, h.c.b)
end.
