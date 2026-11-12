program spin(input, output);
var i: integer;
begin
  i := 0;
  while true do i := (i + 1) mod 7;
  writeln(i)
end.
