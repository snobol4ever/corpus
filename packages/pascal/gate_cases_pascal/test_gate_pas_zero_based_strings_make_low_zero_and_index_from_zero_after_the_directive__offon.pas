{$mode objfpc}{$H+}
program offon(output);
var s: ansistring;
begin
  s := 'hello';
{$ZEROBASEDSTRINGS+}
  writeln(low(s), ' ', high(s), ' ', s[0], s[4]);
{$ZEROBASEDSTRINGS-}
  writeln(low(s), ' ', high(s), ' ', s[1], s[5]);
{$Push}
{$ZEROBASEDSTRINGS ON}
  writeln(low(s), ' ', high(s), ' ', s[0]);
{$Pop}
  writeln(low(s), ' ', high(s), ' ', s[1])
end.
