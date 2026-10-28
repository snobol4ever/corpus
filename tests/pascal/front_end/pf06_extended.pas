{$mode objfpc}
program ex;
var e: extended; d: double; s: single;
begin
  e := 1; e := e / 3; d := 1; d := d / 3; s := 1; s := s / 3;
  writeln(e); writeln(d); writeln(s); writeln(e:0:18); writeln(sqrt(2.0)); writeln(e * 3 = 1);
end.
