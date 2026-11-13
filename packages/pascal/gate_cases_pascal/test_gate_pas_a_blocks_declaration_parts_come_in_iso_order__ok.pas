program declctl(output);
label 1;
const k = 3;
type small = 1..10;
var n: small; total: integer;
procedure outer(m: integer);
label 2;
const j = 2;
type pair = record a, b: integer end;
var p: pair;
  function twice(x: integer): integer;
  var t: integer;
  begin t := x * j; twice := t end;
begin p.a := m; p.b := twice(m); total := total + p.a + p.b; if total > 100 then goto 2; 2: end;
begin
  total := 0; n := k;
  outer(n);
  if total = 9 then goto 1;
  writeln('never');
  1: writeln('ordered parts accepted, total = ', total)
end.
