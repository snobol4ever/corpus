{$mode fpc}
var i: integer; l: longint;
begin
  l := 545454546;
  i := l;
  writeln(i);
  writeln(SizeOf(integer));
  i := 32767; i := i + 1; writeln(i);
end.
