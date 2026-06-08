program markrel(output);
var p: ^integer; i: integer;
begin
  new(p);
  p^ := 42;
  mark(p);
  i := p^;
  release(p);
  writeln(i)
end.
