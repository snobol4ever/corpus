program aa(output);
 
var t: array [1..6, 1..7] of integer; i, j, s: integer;
begin
  for i := 1 to 6 do for j := 1 to 7 do t[i][j] := 0;
  t[1][1] := 11;
  t[1][2] := 12;
  t[3][7] := 37;
  t[6][4] := 64;
  s := 0;
  for i := 1 to 6 do for j := 1 to 7 do s := s + t[i][j];
  writeln('t11 ', t[1][1]:1, ' t12 ', t[1][2]:1, ' t37 ', t[3][7]:1, ' t64 ', t[6][4]:1, ' sum ', s:1)
end.
