program lb2(output);
label up, 10, done;
var i: integer;
procedure p; label inner; var k: integer; begin k := 0; inner: k := k + 1; if k < 3 then goto inner; writeln('p', k) end;
begin i := 0; up: i := i + 1; if i < 3 then goto up; 10: writeln(i); p; goto done; writeln('skipped'); done: writeln('end') end.
