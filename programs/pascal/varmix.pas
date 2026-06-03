program varmix;
var g : integer;
  procedure inc2(var r : integer; d : integer);
  begin
    r := r + d;
    d := d + 100
  end;
begin
  g := 1;
  inc2(g, 5);
  writeln(g)
end.
