program set3;
var i, n : integer;
begin
  n := 0;
  for i := 0 to 5 do if i in [] then n := n + 1;
  writeln(n)
end.
