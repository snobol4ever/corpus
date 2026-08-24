program varparam;
var k : integer;
  procedure bump(var n : integer);
  begin
    n := n + 2
  end;
begin
  k := 5;
  bump(k);
  writeln(k)
end.
