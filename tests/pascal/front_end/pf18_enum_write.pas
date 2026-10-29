program pf18_enum_write;
{$mode objfpc}
type
  color = (red, green, blue, yellow);
  warm = red..green;
  cset = set of color;
  rec = record c: color; end;
function next(c: color): color;
begin
  if c = yellow then next := red else next := succ(c);
end;
procedure show(s: cset);
var c: color;
begin
  for c in s do write(c, ' ');
  writeln;
end;
var
  c: color;
  w: warm;
  r: rec;
  a: array[0..1] of color;
begin
  c := green;
  writeln(c);
  write(blue, ' ', c, ' ', next(yellow), #10);
  w := red;
  writeln(w);
  r.c := yellow;
  writeln(r.c);
  a[0] := blue;
  a[1] := red;
  writeln(a[0], ' ', a[1]);
  show([red, blue, yellow]);
  for c := red to yellow do write(c, ';');
  writeln;
end.
