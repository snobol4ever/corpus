program arr2dtype2;
type row = array[0..2] of integer;
var r: row; i: integer;
function sumrow(a: row): integer;
var j, s: integer;
begin
  s := 0;
  for j := 0 to 2 do s := s + a[j];
  sumrow := s
end;
begin
  for i := 0 to 2 do r[i] := i + 1;
  writeln(sumrow(r))
end.
