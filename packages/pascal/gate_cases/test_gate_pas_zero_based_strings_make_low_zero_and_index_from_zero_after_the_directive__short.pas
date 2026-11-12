{$mode objfpc}{$H+}
program short(output);
var a: ansistring; t: shortstring;
begin
  a := 'abc'; t := 'xyz';
{$ZEROBASEDSTRINGS ON}
  writeln(low(a), ' ', high(a), ' ', a[0]);
  writeln(low(t), ' ', high(t), ' ', t[1]);
{$ZEROBASEDSTRINGS OFF}
  writeln(low(a), ' ', high(a), ' ', a[1])
end.
