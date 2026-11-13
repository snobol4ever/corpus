program w2;
type item = record typ: integer end;
var g: item;
procedure p(var x: item); forward;
procedure p;
begin
  writeln(x.typ);
  x.typ := 9;
  writeln(x.typ)
end;
begin
  g.typ := 4; p(g); writeln(g.typ)
end.
