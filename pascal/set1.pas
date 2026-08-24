program set1;
var
  s : set of 0..47;
  i, n : integer;
begin
  s := [2, 3, 5, 7];
  n := 0;
  for i := 0 to 10 do
    if i in s then
      n := n + 1;
  writeln(n)
end.
