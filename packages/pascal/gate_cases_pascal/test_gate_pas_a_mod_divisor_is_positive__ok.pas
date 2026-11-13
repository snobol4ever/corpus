program modctl(output);
var a, b, n: integer;
begin
  n := 0;
  for a := -7 to 7 do for b := 1 to 4 do n := (n * 3 + a mod b) mod 1000003;
  writeln(n:1);
  a := -7; b := 3; writeln(a mod b:1, ' ', 7 mod 3:1, ' ', (a * 2) mod (b + 1):1, ' ', maxint mod b:1)
end.
