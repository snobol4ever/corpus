program ra(output);
type q = record c: char; n: integer end;
var r: record i: integer; j: integer end;
begin
  r.i := 5; r.j := 6; writeln(r.i, r.j)
end.
