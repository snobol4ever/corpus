program copies(output);
type row = array [1..3] of integer;
var r, s: row; nest: array [0..1] of row; a2: array [0..1] of array [1..3] of integer; hi: array [1..2] of array [5..6] of real; i: integer;
begin
  r[1] := 1; r[2] := 2; r[3] := 3; s := r; s[1] := 50; writeln(r[1], s[1]);
  nest[0][1] := 7; nest[1] := nest[0]; nest[1][1] := 8; writeln(nest[0][1], nest[1][1]);
  s := nest[0]; s[1] := 60; writeln(nest[0][1], s[1]);
  nest[0] := s; s[1] := 70; writeln(nest[0][1], s[1]);
  a2[0][2] := 4; a2[1, 2] := 5; a2[1][3] := 6; a2[0] := a2[1]; a2[1][2] := 0; writeln(a2[0, 2], a2[1][2], a2[0][3]);
  for i := 1 to 2 do begin hi[i][5] := i / 4; hi[i, 6] := i * 1.5 end; writeln(hi[2][5]:0:2, hi[1, 6]:0:2)
end.
