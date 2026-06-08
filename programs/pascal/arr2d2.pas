program arr2d2;
var b: array[0..2, 0..2] of integer;
    i, j: integer;
begin
  for i := 0 to 2 do
    for j := 0 to 2 do
      b[i,j] := i * 3 + j;
  for i := 0 to 2 do begin
    for j := 0 to 2 do begin
      write(b[i,j]); write(' ')
    end;
    writeln
  end
end.
