program na(output);
type q = record a, b: integer end;
var g: record x: integer; c: q end;
begin
  g.x := 1; g.c.a := 42; g.c.b := 7;
  writeln(g.x); writeln(g.c.a); writeln(g.c.b)
end.
