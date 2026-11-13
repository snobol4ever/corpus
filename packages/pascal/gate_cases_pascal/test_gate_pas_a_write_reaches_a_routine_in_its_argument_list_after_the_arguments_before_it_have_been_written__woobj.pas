{$mode objfpc}
program woobj;
var n: integer; r: real; f: text; s: string;
function noisy(k: integer): integer;
begin
  write('<n', k, '>');
  noisy := k * 2
end;
function tag(s: string): string;
begin
  write('{', s, '}');
  tag := s
end;
begin
  n := 5; r := 2.5;
  writeln('a', noisy(1), 'b');
  writeln(n:4, ' ', tag('t'), ' ', r:8:3);
  writeln(tag('lead'));
  assign(f, 'wo.tmp'); rewrite(f);
  writeln(f, 'f', n:3, ' ', tag('inf'), ' ', noisy(6));
  close(f);
  reset(f); readln(f, s); writeln('read back: ', s); close(f)
end.
