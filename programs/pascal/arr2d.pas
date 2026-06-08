program arr2d(output);
var
  a: array[0..2, 0..4] of integer;
  i, j: integer;
begin
  for i := 0 to 2 do
    for j := 0 to 4 do
      a[i,j] := i * 10 + j;
  for i := 0 to 2 do begin
    for j := 0 to 4 do
      write(a[i,j]:4);
    writeln
  end
end.
