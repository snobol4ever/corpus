program fvar(output);
type s = 1..5;
var g: s;
procedure b(var c: s);
var i: integer;
begin
  i := 9; c := i; writeln('after')
end;
begin
  writeln('before'); b(g)
end.
