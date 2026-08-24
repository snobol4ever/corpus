program set7;
var s : set of 0..47; i, n : integer;
begin
  s := [1, 2, 3, 4] - [2, 4];
  n := 0;
  for i := 0 to 12 do if i in s then n := n + 1;
  writeln(n)
end.
