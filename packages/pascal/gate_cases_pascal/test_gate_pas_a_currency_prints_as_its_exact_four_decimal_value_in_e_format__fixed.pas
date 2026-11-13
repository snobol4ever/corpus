{$mode objfpc}{$H+}
program fixed(output);
var C: Currency;
begin
  C := 1234.5678;
  writeln(C:12:2);
  writeln(C:0:4);
  writeln(C:8:1)
end.
