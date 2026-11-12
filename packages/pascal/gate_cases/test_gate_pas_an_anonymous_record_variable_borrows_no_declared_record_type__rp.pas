program rp(output);
type q = record c: char end; p = ^q;
var r: record i: integer end; v: p;
begin
  new(v); v^.c := 'z'; r.i := 5; writeln(r.i, v^.c)
end.
