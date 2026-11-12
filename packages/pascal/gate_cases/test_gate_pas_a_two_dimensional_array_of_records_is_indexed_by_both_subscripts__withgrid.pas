program withgrid(output);
type rec = record ishistory: boolean; rnum: integer end;
var galaxy: array [0..3, 0..3] of rec; i, j, n: integer;
begin
  for i := 0 to 3 do for j := 0 to 3 do
    with galaxy[i, j] do begin ishistory := (i = j); rnum := i * 4 + j end;
  n := 0;
  for i := 0 to 3 do for j := 0 to 3 do if galaxy[i, j].ishistory then n := n + galaxy[i, j].rnum;
  writeln(n, ' ', galaxy[3, 1].rnum)
end.
