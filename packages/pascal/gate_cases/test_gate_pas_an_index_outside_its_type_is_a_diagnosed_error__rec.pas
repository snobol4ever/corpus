program rec(output);
type r = record x, y: integer end;
var a: array [1..3] of r; i: integer;
begin a[3].x := 5; writeln(a[3].x:1); i := 4; a[i].x := 1; writeln('after') end.
