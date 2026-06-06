program boolmix;
var a, b, c: boolean;
begin
  a := 1 < 2;
  b := 2 < 1;
  c := not a or b;
  if c then writeln(1) else writeln(0)
end.
