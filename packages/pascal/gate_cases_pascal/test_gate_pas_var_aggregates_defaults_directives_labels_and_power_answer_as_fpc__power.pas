{$mode objfpc}
program pw;
uses math;
var n: integer; x: real;
begin
  n := 3; x := 2.0;
  writeln(n ** 2, ' ', 2 ** 10, ' ', (x ** 3):0:2, ' ', -2 ** 2, ' ', 2 ** 3 ** 2, ' ', (n mod 10) ** 2, ' ', (2.0 ** 0.5):0:6)
end.
