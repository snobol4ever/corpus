program t(output);
var x: integer;
procedure noop; begin end;
procedure another; begin end;
begin
  x := 1;
  noop;
  x := x + 1;
  another;
  x := x + 1;
  writeln(x)
end.
