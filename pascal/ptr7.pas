program ptr7(output);
type ip = ^integer;
var p, q : ip;
begin
  new(p); new(q);
  p^ := 1; q^ := 1;
  if p = q then writeln(100) else writeln(200);
  q := p;
  if p = q then writeln(300) else writeln(400)
end.
