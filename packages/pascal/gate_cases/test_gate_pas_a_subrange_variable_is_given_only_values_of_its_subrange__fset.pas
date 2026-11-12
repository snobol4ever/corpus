program fset(output);
type a = set of 1..5;
procedure b(c: a);
begin
  c := [3, 6]; writeln('after')
end;
begin
  writeln('before'); b([1, 2])
end.
