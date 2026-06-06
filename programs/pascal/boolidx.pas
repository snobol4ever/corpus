program boolidx;
var a : array[0..3] of boolean;
    i, j : integer;
begin
  i := 5; j := 3;
  a[0] := i > j;
  a[1] := i < j;
  a[2] := i = 5;
  a[3] := j <> 3;
  if a[0] then writeln(1) else writeln(0);
  if a[1] then writeln(1) else writeln(0);
  if a[2] then writeln(1) else writeln(0);
  if a[3] then writeln(1) else writeln(0)
end.
