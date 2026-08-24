program with2;
type
  point = record x : integer; y : integer end;
var
  p : point;
  q : point;
  g : integer;
begin
  p.x := 10; p.y := 20; g := 5;
  with p do begin
    writeln(x);
    writeln(y);
    x := x + g
  end;
  writeln(p.x);
  q.x := 1; q.y := 2;
  with q do begin
    x := x * 3;
    writeln(x)
  end
end.
