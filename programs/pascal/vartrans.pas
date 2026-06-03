program vartrans;
var g : integer;
  procedure inner(var z : integer);
  begin
    z := z * 3
  end;
  procedure outer(var y : integer);
  begin
    y := y + 1;
    inner(y)
  end;
begin
  g := 4;
  outer(g);
  writeln(g)
end.
