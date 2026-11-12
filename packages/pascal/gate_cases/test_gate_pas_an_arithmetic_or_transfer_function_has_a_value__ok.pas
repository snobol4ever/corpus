program numctl(output);
var i: integer; r, z: real;
begin
  i := 46340; writeln(sqr(i):1, ' ', sqr(-i):1, ' ', sqr(2.5):4:2);
  z := 0.0; r := 2.0; writeln(sqrt(z):4:2, ' ', sqrt(r):8:5, ' ', ln(1.0):4:2, ' ', ln(0.5):8:5);
  r := -2147483647.9; writeln(trunc(r):1); r := 2147483647.4; writeln(round(r):1);
  r := -2.5; writeln(trunc(r):1, ' ', round(r):1); r := 2.5; writeln(trunc(r):1, ' ', round(r):1)
end.
