program subarr(output);
type range = 1..4;
var a: array[range] of integer;
    i: integer;
begin
  for i := 1 to 4 do a[i] := i * i;
  for i := 1 to 4 do writeln(a[i])
end.
