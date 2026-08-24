program recparam2;
type pair = record a: integer; b: integer end;
var r: pair;
function sum(p: pair): integer;
begin
  sum := p.a + p.b
end;
begin
  r.a := 10; r.b := 25;
  writeln(sum(r))
end.
