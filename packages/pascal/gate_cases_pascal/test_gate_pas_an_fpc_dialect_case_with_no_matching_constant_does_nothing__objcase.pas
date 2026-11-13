program objcase;
{$mode objfpc}
type colour = (red, green, blue);
var k: colour; t: integer;
begin
  t := 0;
  for k := red to blue do case k of green: t := t + 5 end;
  case t of 1..4: writeln('low') end;
  writeln(t)
end.
