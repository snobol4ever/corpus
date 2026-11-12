{$mode objfpc}{$H+}
program str(output);
var s: ansistring; sh: shortstring; p, q: PChar;
begin
  s := 'abcdefghij'; sh := '0123456789';
  p := PChar(@s[3]);
  writeln(p[0], p[1], p^);
  inc(p, 2); writeln(p[0], p[-1], p[-2]);
  dec(p); writeln(p^);
  q := p; inc(q, 3); writeln(q[0], ' ', p[0]);
  p := PChar(@sh[1]); inc(p, 4); writeln(p[-4], p[5])
end.
