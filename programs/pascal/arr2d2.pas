program arr2d2(output);
var
  m: array[1..3, 1..3] of integer;
  i, j, s: integer;
begin
  for i := 1 to 3 do
    for j := 1 to 3 do
      m[i,j] := i + j;
  s := 0;
  for i := 1 to 3 do
    for j := 1 to 3 do
      s := s + m[i,j];
  writeln(s)
end.
