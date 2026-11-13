program dswvar;
procedure hello;
begin
  writeln('hello')
end;
var x: UInt64; i: integer;
begin
  hello;
  x := 5;
  for i := 1 to 3 do x := x * 2;
  writeln(x)
end.
