{-------------------------------------------------------------------- 1 stdlib1}
program stdlib1(input, output);
var i : integer;
begin
  i := -7;
  writeln(abs(i));
  i := 5;
  writeln(abs(i));
  writeln(trunc(3.9));
  writeln(trunc(-2.1));
  if odd(4) then writeln('yes') else writeln('no');
  if odd(7) then writeln('yes') else writeln('no');
  writeln(pred(10));
  writeln(succ(10))
end.
{-------------------------------------------------------------------- 2 stdlib2}
program stdlib2(output);
var r: real;
begin
  r := sqrt(2.0);
  writeln(r:20);
  r := sin(1.0);
  writeln(r:20);
  r := cos(0.0);
  writeln(r:20);
  r := exp(1.0);
  writeln(r:20);
  r := ln(1.0);
  writeln(r:20);
  r := arctan(1.0);
  writeln(r:20)
end.
{-------------------------------------------------------------------- 3 stdlib3}
program stdlib3(output);
var r: real; i: integer;
begin
  r := exp(0.0);
  writeln(r:20);
  r := arctan(0.0);
  writeln(r:20);
  r := sin(0.0);
  writeln(r:20);
  r := cos(1.0);
  writeln(r:20);
  i := trunc(sqrt(2.0));
  writeln(i)
end.
