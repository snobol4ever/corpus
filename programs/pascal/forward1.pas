program forward1;
var x: integer;
procedure second; forward;
procedure first;
begin
  second
end;
procedure second;
begin
  writeln(x)
end;
begin
  x := 42;
  first
end.
