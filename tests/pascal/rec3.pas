program rec3;
var
  p : record x, y : integer end;
  q : record x, y : integer end;
begin
  p.x := 1; p.y := 2;
  q.x := p.y; q.y := p.x;
  writeln(q.x, q.y);
  writeln(p.x + q.x + p.y + q.y)
end.
