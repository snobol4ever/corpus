program census(output);
var r: longint;
function f(n: longint): longint;
begin
  if n < 2 then f := n else f := f(n - 1) + f(n - 2)
end;
begin
  r := f(15);
  writeln(r)
end.
