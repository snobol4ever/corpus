program ptr1(output);
type
  ip = ^integer;
var
  p : ip;
begin
  new(p);
  p^ := 42;
  writeln(p^)
end.
