program goto1;
label 1, 2;
var i: integer;
begin
  i := 0;
1:
  i := i + 1;
  if i < 5 then goto 1;
  writeln(i);
  goto 2;
  writeln(999);
2:
  writeln(i + 10)
end.
