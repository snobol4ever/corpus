{$mode objfpc}{$H+}
program shadow(output);
var x: longint;
procedure P(x: Currency);
begin writeln(x) end;
begin
  P(2.5);
  x := 42;
  writeln(x)
end.
