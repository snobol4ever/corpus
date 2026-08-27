{---------------------------------------------------------------------- 1 arr2d}
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
{--------------------------------------------------------------------- 2 arr2d2}
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
{--------------------------------------------------------------------- 3 arr2d3}
program arr2d3;
var m: array[0..1, 0..1] of integer;
begin
  m[0,0] := 1; m[0,1] := 0;
  m[1,0] := 0; m[1,1] := 1;
  writeln(m[0,0]); writeln(m[0,1]);
  writeln(m[1,0]); writeln(m[1,1])
end.
