program methresult;
{$mode objfpc}
type TB = class
  x: integer;
  function Total: integer;
  function Twice: integer;
end;
function TB.Total: integer;
var i: integer;
begin
  Total := 0;
  for i := 1 to 3 do Total := Total + i * x
end;
function TB.Twice: integer;
begin
  Twice := Total * 2
end;
var b: TB;
begin b := TB.Create; b.x := 2; writeln(b.Total, ' ', b.Twice) end.
