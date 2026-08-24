program downto1(output);
var i, s : integer;
begin
  s := 0;
  for i := 5 downto 1 do s := s + i;
  writeln(s);
  for i := 10 downto 5 do writeln(i)
end.
