{$R-}
program mix;
var b: qword; k: longint;
begin
  b := 10000000000000000000; k := 7;
  writeln(b mod 7, '|', b div 1000000, '|')
end.
