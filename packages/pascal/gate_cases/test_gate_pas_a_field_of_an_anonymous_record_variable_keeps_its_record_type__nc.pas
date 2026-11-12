program nc(output);
type q = record c: char; n: integer end;
var r: record i: integer; s: q end;
begin
  r.i := 5; r.s.n := 7; r.s.c := 'x';
  writeln(r.i, r.s.c, r.s.n)
end.
