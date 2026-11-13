program g;
var s: set of 1..20; y, x, z: real;
begin
  s := [1, 3, 5, 7, 9, 11, 13];
  if 13 in s then writeln('13 in') else writeln('13 out');
  if 11 in s then writeln('11 in') else writeln('11 out');
  writeln(1.5:1:1, 2.5:1:1, 3.5:1:1, 4.5:1:1);
  y := 1.0; x := 2.0; z := 3.0; write(y:1:1, x:1:1, z:1:1); writeln;
  writeln(1, ' ', 2, ' ', 3, ' ', 4);
  writeln(1, ' ', 2, ' ', 3, ' ', 4, ' ', 5)
end.
