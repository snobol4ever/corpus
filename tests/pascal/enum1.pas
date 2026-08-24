program enumtest;
type
  color = (red, green, blue);
  season = (spring, summer, fall, winter);
var
  c: color;
  s: season;
  i: integer;
begin
  c := green;
  s := fall;
  i := ord(c);
  writeln(i);
  if c = green then writeln(1) else writeln(0);
  writeln(ord(winter));
  for c := red to blue do
    writeln(ord(c));
  case s of
    spring: writeln(10);
    summer: writeln(20);
    fall:   writeln(30);
    winter: writeln(40)
  end
end.
