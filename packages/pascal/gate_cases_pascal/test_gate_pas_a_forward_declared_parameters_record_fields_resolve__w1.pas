program w1;
type item = record typ: integer end;
var g: item;
procedure p(var x: item); forward;
procedure p;
  var y: item;
begin
  y.typ := 1;
  if x.typ = y.typ then writeln('eq') else writeln('ne')
end;
begin
  g.typ := 1; p(g)
end.
