program with1;
type
  point = record
    x : integer;
    y : integer
  end;
var
  p : point;
  q : point;
begin
  p.x := 3; p.y := 4;
  with p do begin
    writeln(x);
    writeln(y);
    x := x + 10
  end;
  writeln(p.x)
end.
