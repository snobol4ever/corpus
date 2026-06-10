program downto2(output);
var i, j, s : integer;
begin
  s := 0;
  for i := 3 downto 1 do
    for j := i downto 1 do
      s := s + j;
  writeln(s);
  for i := 4 downto 2 do
    writeln(i)
end.
