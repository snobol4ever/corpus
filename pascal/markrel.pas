program markrel;
var mark: array[0..2, 0..2] of integer;
    i, j: integer;
begin
  for i := 0 to 2 do
    for j := 0 to 2 do
      if i = j then mark[i,j] := 1 else mark[i,j] := 0;
  for i := 0 to 2 do begin
    for j := 0 to 2 do begin
      write(mark[i,j]); write(' ')
    end;
    writeln
  end
end.
