program nw(output);
type q = record a, b: integer end;
var g: record x: integer; c: q end;
begin
  with g do begin x := 3; c.a := 4; c.b := c.a + x end;
  writeln(g.x, g.c.a, g.c.b)
end.
