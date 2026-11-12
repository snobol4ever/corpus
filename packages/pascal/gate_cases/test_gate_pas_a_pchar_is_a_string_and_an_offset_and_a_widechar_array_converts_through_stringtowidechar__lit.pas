{$mode objfpc}{$H+}
program lit(output);
var p: PChar;
begin
  p := 'hello'; writeln(p[0], p[4]); inc(p); writeln(p^, p[3])
end.
