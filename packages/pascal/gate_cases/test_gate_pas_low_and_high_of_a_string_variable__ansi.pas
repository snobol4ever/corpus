{$mode objfpc}{$H+}
program ansi(output);
var s: ansistring;
begin
  s := 'abc';
  writeln(low(s), ' ', high(s));
  s := 'hello world';
  writeln(low(s), ' ', high(s))
end.
