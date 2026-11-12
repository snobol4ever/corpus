program rows(output);
type row = array [1..3] of integer; grid = array [0..2] of row;
var nest: array [0..1] of row; g: grid; r, s: row; i, j: integer;
procedure bump(var x: row); begin x[3] := x[3] + 100 end;
function sum(x: row): integer; var k, t: integer; begin t := 0; for k := 1 to 3 do t := t + x[k]; x[1] := -5; sum := t end;
begin
  for i := 0 to 1 do for j := 1 to 3 do nest[i][j] := i * 10 + j;
  r[1] := 5; r[2] := 6; r[3] := 7; nest[0] := r; r[1] := 99; writeln(nest[0][1], nest[0, 2], r[1]);
  s := nest[1]; s[2] := -1; writeln(nest[1][2], s[2]);
  bump(nest[1]); writeln(nest[1][3], sum(nest[1]), nest[1][1]);
  for i := 0 to 2 do for j := 1 to 3 do g[i, j] := i + j; writeln(g[2][3], g[0][1], g[1, 2])
end.
