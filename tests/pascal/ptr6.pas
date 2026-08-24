program ptr6(output);
type ip = ^integer;
var p, q : ip;
begin
  new(p);
  p^ := 5;
  q := p;
  q^ := 99;
  writeln(p^);
  if p = q then writeln(1) else writeln(0)
end.
