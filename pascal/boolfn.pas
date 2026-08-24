program boolfn;
var r : boolean;
function big(n : integer) : boolean;
begin
  big := n > 10
end;
begin
  r := big(20);
  if r then writeln(1) else writeln(0);
  r := big(5);
  if r then writeln(1) else writeln(0)
end.
