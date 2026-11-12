program numctl(output);
label 10;
type small = 1..10;
var x: real; i: small; n: integer; a: array[1..3] of integer;
begin
  x := 1e5 + 2.5e-3 + 3E2 + 0.5;
  n := 42 div 4 + 7 mod 2;
  for i := 1 to 3 do a[i] := i*i;
  if n > 0 then goto 10;
  n := 0;
  10: writeln(x:12:4, n:4, a[3]:3, (n)div(2):3)
end.
