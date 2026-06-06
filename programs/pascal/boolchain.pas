program boolchain;
var a, b, c: boolean; i: integer;
begin
  i := 3;
  a := true;
  b := false;
  c := (i = 0) or b;
  if c then writeln(1) else writeln(0);
  c := not a or b;
  if c then writeln(1) else writeln(0);
  c := not a and b;
  if c then writeln(1) else writeln(0);
  c := not b and a;
  if c then writeln(1) else writeln(0);
  c := (i = 3) or b;
  if c then writeln(1) else writeln(0);
  c := (i = 3) and a;
  if c then writeln(1) else writeln(0);
  c := (i < 2) or (i > 2);
  if c then writeln(1) else writeln(0);
  c := (i > 0) and (i < 2);
  if c then writeln(1) else writeln(0)
end.
