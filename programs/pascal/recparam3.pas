program recparam3;
type vec2 = record x: integer; y: integer end;
var u, v: vec2;
function dot(a: vec2; b: vec2): integer;
begin
  dot := a.x * b.x + a.y * b.y
end;
begin
  u.x := 1; u.y := 2;
  v.x := 3; v.y := 4;
  writeln(dot(u, v))
end.
