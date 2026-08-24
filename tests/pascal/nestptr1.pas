program nestptr1;
type
  inner = record a, b: integer end;
  outer = record x: integer; c: inner; y: integer end;
  outerptr = ^outer;
var p: outerptr;
begin
  new(p);
  p^.x := 1;
  p^.c.a := 42;
  p^.c.b := 7;
  p^.y := 99;
  writeln(p^.x);
  writeln(p^.c.a);
  writeln(p^.c.b);
  writeln(p^.y)
end.
