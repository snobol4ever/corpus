program q;
uses Shapes;
var p: Point; c: Color;
function Value: integer;
begin
  Value := -1
end;
begin
  p := MakePoint(3, 4);
  writeln(p.x + p.y + Origin);
  Bump; shapes.bump;
  writeln(Count, ' ', Shapes.Count);
  writeln(Value, ' ', Shapes.Value);
  for c := Red to Blue do write(ColorName(c), ' ');
  writeln;
  c := Shapes.Green;
  writeln(ord(c))
end.
