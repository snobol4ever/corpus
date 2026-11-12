program woiso;
var n: integer; r: real;
function noisy(k: integer): integer;
begin
  write('<n', k, '>');
  noisy := k * 2
end;
begin
  n := 5; r := 2.5;
  writeln('a', noisy(1), 'b');
  writeln(n:4, ' ', noisy(2), ' ', r:8:3);
  writeln(r:6:2, noisy(3), noisy(4), n);
  write(noisy(5), 'x', noisy(6)); writeln;
  writeln(noisy(7))
end.
