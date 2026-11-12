program unnamed;
var g: file of integer; n: integer;
begin
  rewrite(g);
  write(g, 42);
  reset(g);
  read(g, n);
  writeln(n:1);
end.
