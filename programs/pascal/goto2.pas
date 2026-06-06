program goto2;
label 1, 5;
var i, n, total: integer;
begin
  total := 0;
  n := 0;
1:
  n := n + 1;
  i := 0;
  while i < 10 do begin
    i := i + 1;
    total := total + 1;
    if (i = 3) and (n < 3) then goto 1;
    if total > 50 then goto 5
  end;
  writeln(n);
  writeln(total);
5:
  writeln(total * 100 + n)
end.
