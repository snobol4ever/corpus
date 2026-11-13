program vfml(output);
type s = 1..5;
procedure a(var b: integer);
begin
  b := 1
end;
procedure p(x: s);
begin
  a(x); writeln(x)
end;
begin
  p(3)
end.
