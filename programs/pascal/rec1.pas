program rec1;
type
  point = record
    x : integer;
    y : integer
  end;
var
  p : point;
begin
  p.x := 3;
  p.y := 4;
  writeln(p.x + p.y)
end.
