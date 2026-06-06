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
