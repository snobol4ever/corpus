program set5;
var s : set of 0..47; i, n : integer;
begin
  s := [1, 2] + [2, 3];
  n := 0;
  for i := 0 to 10 do if i in s then n := n + 1;
  writeln(n)
end.
