{$mode objfpc}{$H+}
uses SysUtils;
resourcestring SErr = 'Invalid at line %d';
begin
  writeln(Format(SErr, [3]));
end.
