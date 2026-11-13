program lpctl(input, output);
label 1, 9999;
var n: integer;
begin
  n := 0;
  1: n := n + 1;
  if n < 3 then goto 1;
  if n = 3 then goto 9999;
  writeln('never');
  9999: writeln('labels 1 and 9999 reached, n = ', n)
end.
