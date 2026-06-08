program arr2d3(output);
var
  b: array[0..2, 0..2] of integer;
  i, j: integer;
begin
  for i := 0 to 2 do
    for j := 0 to 2 do
      if i = j then b[i,j] := 1 else b[i,j] := 0;
  for i := 0 to 2 do begin
    for j := 0 to 2 do
      write(b[i,j]:3);
    writeln
  end
end.
