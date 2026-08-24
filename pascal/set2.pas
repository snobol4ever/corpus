program set2;
var i, n : integer;
begin
  n := 0;
  for i := 0 to 9 do
    if i in [1, 4, 6, 8] then n := n + 1;
  writeln(n)
end.
