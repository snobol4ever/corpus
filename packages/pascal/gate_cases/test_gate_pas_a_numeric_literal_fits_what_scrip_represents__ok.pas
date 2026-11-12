program litctl(output);
var r: real; n: integer;
begin
  n := 2147483647; writeln(n);
  r := 1.0e308; if r > 1.0e307 then writeln('big real ok');
  r := 1.0e-300; if r > 0 then writeln('tiny real ok');
  r := 2.5e-3; writeln(r:0:4)
end.
