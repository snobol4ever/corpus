{ DESIGN-PLAN planner-finish witness: arithmetic over locals, parameters and a global; a var parameter; a parameter read through its coordinate }
program pf_binop;
var g, r, s, t: integer;
function f(a, b: integer): integer;
var c: integer;
begin
  c := a * 2 + b;
  f := c - g;
end;
procedure p(x: integer; var y: integer);
begin
  y := x + y * 3;
end;
begin
  g := 4; s := 1;
  r := f(3, 5);
  p(r, s);
  t := f(s, r) mod 7;
  writeln(r:1);
  writeln(s:1);
  writeln(t:1);
end.
