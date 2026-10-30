{ ex10 -- a run-time error after output: what was written is flushed and the exit code is the oracle's (DESIGN-PLAN exceptions, the cto 2026-10-29) }
program ex10;
var
  a: array [1..5] of integer;
  i, y, z: integer;
begin
  for i := 1 to 5 do a[i] := i * i;
  writeln('before ', a[5]);
  writeln('two');
  y := a[1] - 1;
  z := a[3] div y;
  writeln('never ', z)
end.
