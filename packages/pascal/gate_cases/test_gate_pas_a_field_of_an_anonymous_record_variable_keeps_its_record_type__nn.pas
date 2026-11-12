program nn(output);
type q = record a, b: integer end; w = record x: integer; c: q end;
var g: w;
begin
  g.x := 1; g.c.a := 42; g.c.b := 7;
  writeln(g.x, g.c.a, g.c.b)
end.
