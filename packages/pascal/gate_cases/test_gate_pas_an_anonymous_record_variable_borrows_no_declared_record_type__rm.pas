program rm(output);
type q = record c: char; n: integer end;
var r: record c: char; n: integer end; x: q;
begin
  r.c := 'a'; r.n := 7; x.c := 'b'; x.n := 8;
  writeln(r.c, r.n, x.c, x.n);
  with r do writeln(c, n)
end.
