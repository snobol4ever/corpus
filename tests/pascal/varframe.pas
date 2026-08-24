program varframe;
var g : integer;
  procedure bump(var n : integer);
  begin
    n := n + 100
  end;
  procedure outer(p : integer);
  begin
    bump(p);
    writeln(p)
  end;
begin
  g := 7;
  outer(g);
  writeln(g)
end.
