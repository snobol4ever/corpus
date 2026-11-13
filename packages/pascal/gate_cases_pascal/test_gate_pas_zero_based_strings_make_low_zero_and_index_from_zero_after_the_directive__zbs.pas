{$mode objfpc}{$H+}
program zbs(output);
var s: ansistring; i: integer;
begin
  s := 'abc';
  writeln(low(s), ' ', high(s), ' ', s[1]);
{$ZEROBASEDSTRINGS ON}
  writeln(low(s), ' ', high(s), ' ', s[0]);
  for i := low(s) to high(s) do write(s[i]);
  writeln;
  s[0] := 'X';
{$ZEROBASEDSTRINGS OFF}
  writeln(s, ' ', s[1])
end.
