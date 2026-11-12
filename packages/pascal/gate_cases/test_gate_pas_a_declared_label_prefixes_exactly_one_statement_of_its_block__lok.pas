program lok(output);
label 02, 9999;
var i: integer;
procedure p;
label 1;
begin
  i := i + 1;
  if i < 3 then goto 1;
  writeln('late');
  goto 9999;
  1: writeln('inner ', i)
end;
begin
  i := 0;
  2: p;
  if i < 5 then goto 2;
  writeln('never');
  9999: writeln('done ', i)
end.
