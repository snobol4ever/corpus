program fproc(output);
procedure p;
var l: record case b: boolean of true: (i: integer); false: (c: char) end; q: integer;
begin l.b := true; l.i := 3; writeln('in'); l.b := false; q := ord(l.c); writeln(q:1) end;
begin p end.
