program vok(output);
type s = 1..10; t = set of 1..5;
var c: s; i: integer; u: t;
procedure a(var b: s);
begin
  b := b + 1
end;
procedure n(var b: integer);
begin
  b := b * 2
end;
procedure w(var b: t);
begin
  b := b + [4]
end;
begin
  c := 3; a(c); writeln(c); i := 21; n(i); writeln(i); u := [1]; w(u); writeln(4 in u)
end.
