program recparam;
type point = record x: integer; y: integer end;
var p: point;
procedure show(q: point);
begin
  writeln(q.x); writeln(q.y)
end;
begin
  p.x := 3; p.y := 7;
  show(p)
end.
