program boolnot;
var a, b, c: boolean; i, j: integer;
begin
  i := 3;
  j := 5;
  a := i < j;
  b := not a;
  if b then writeln(1) else writeln(0);
  c := a and b;
  if c then writeln(1) else writeln(0);
  c := a or b;
  if c then writeln(1) else writeln(0);
  b := not (i = j);
  if b then writeln(1) else writeln(0);
  c := a and b or c;
  if c then writeln(1) else writeln(0);
  if not c then writeln(1) else writeln(0)
end.
