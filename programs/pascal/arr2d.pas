program arr2d;
var a: array[0..1, 0..2] of integer;
    i, j: integer;
begin
  a[0,0] := 1; a[0,1] := 2; a[0,2] := 3;
  a[1,0] := 4; a[1,1] := 5; a[1,2] := 6;
  for i := 0 to 1 do begin
    for j := 0 to 2 do begin
      write(a[i,j]); write(' ')
    end;
    writeln
  end
end.
