program matmul;
var a, b, c: array[0..1, 0..1] of integer;
    i, j, k: integer;
begin
  a[0,0] := 1; a[0,1] := 2; a[1,0] := 3; a[1,1] := 4;
  b[0,0] := 5; b[0,1] := 6; b[1,0] := 7; b[1,1] := 8;
  for i := 0 to 1 do
    for j := 0 to 1 do begin
      c[i,j] := 0;
      for k := 0 to 1 do
        c[i,j] := c[i,j] + a[i,k] * b[k,j]
    end;
  writeln(c[0,0]); writeln(c[0,1]);
  writeln(c[1,0]); writeln(c[1,1])
end.
