program ctl(output);
type r = record n: integer; c: char end; ft = file of integer;
var d: r; f: ft;
procedure b(c: r); begin writeln(c.n, c.c) end;
procedure p(var x: text); begin writeln(x, 'line') end;
begin d.n := 4; d.c := 'q'; b(d); rewrite(f); write(f, 9); reset(f); writeln(f^); p(output) end.
