program fok(output);
type a = set of 1..5; s = 1..5;
var g: s; x: integer;
procedure b(c: a; var d: s; e: s);
begin
  c := c + [5]; d := e; if 5 in c then writeln('five ', d)
end;
procedure q(x: s);
begin
  x := 5; writeln('q ', x)
end;
begin
  b([1, 2], g, 4); writeln(g); q(2); x := 10; writeln(x)
end.
