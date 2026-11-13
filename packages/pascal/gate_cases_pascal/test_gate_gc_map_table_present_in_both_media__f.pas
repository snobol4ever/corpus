program sumloop;
var
  i, s: integer;
function add(a, b: integer): integer;
begin
  add := a + b
end;
begin
  s := 0;
  for i := 1 to 5 do
    s := add(s, 2);
  writeln(s)
end.
