program loop(output);
label 1;
var n, x: integer;
procedure jump; begin writeln('jumped'); goto 1 end;
function f(k: integer): integer; begin f := k * k end;
begin
  n := 0; x := 0;
  while n < 4 do begin n := n + 1; x := x + f(n) end;
  writeln(x:1);
  if n < 0 then jump;
1:
  writeln('end ', n:1)
end.
