program flat(output);
type rec = record rnum: integer end;
var galaxy: array [0..3, 0..3] of rec; i, j: integer;
begin
  i := 1; j := 2;
  galaxy[i, j].rnum := 5;
  writeln(galaxy[1, 2].rnum)
end.
