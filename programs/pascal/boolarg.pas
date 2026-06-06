program boolarg;
var i, j: integer;
procedure show(b: boolean);
begin
  if b then writeln(1) else writeln(0)
end;
begin
  i := 3;
  j := 5;
  show(i < j);
  show(i > j);
  show(not (i = j))
end.
