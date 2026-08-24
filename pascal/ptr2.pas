program ptr2(output);
type ip = ^integer;
var p, q : ip;
begin
  new(p); new(q);
  p^ := 10; q^ := 20;
  writeln(p^ + q^);
  p^ := p^ + 1;
  writeln(p^, q^)
end.
