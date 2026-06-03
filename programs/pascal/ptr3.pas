program ptr3(output);
type ip = ^integer;
var p : ip;
begin
  p := nil;
  if p = nil then writeln(1) else writeln(0);
  new(p);
  if p <> nil then writeln(2) else writeln(0)
end.
