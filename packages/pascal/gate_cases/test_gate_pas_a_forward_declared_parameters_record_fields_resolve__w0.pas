program w0;
type item = record typ: integer end;
var g: item;
procedure p(var x: item);
  var y: item;
begin
  y.typ := 1;
  writeln(x.typ);
  x.typ := 9;
  if x.typ = y.typ then writeln('eq') else writeln('ne')
end;
begin
  g.typ := 1; p(g); writeln(g.typ)
end.
