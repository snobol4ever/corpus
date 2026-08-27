{------------------------------------------------------------------- 1 recparam}
program recparam;
type point = record x: integer; y: integer end;
var p: point;
procedure show(q: point);
begin
  writeln(q.x); writeln(q.y)
end;
begin
  p.x := 3; p.y := 7;
  show(p)
end.
{------------------------------------------------------------------ 2 recparam2}
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
{------------------------------------------------------------------ 3 recparam3}
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
