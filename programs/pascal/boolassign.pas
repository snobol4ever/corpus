program boolassign;
var b: boolean; i, j: integer;
begin
  i := 3;
  j := 5;
  b := i < j;
  if b then writeln(1) else writeln(0);
  b := i > j;
  if b then writeln(1) else writeln(0);
  b := i = j;
  if b then writeln(1) else writeln(0);
  b := i <> j;
  if b then writeln(1) else writeln(0);
  b := i <= j;
  if b then writeln(1) else writeln(0);
  b := i >= j;
  if b then writeln(1) else writeln(0)
end.
