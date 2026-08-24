program t;
type dt = (ci, cc);
     r = record case dt of
       ci: (vi: integer);
       cc: (vc: char)
     end;
var s: array[0..4] of r; i: integer;
begin
  s[0].vc := 'H'; s[1].vc := 'e'; s[2].vc := 'l'; s[3].vc := 'l'; s[4].vc := 'o';
  for i := 0 to 4 do write(s[i].vc);
  writeln
end.
