{$mode objfpc}
var sh: shortint; sm: smallint; l: longint; i: integer; i64: int64;
begin
  sh := 127; sh := sh + 1; writeln(sh);
  sm := 32767; sm := sm + 1; writeln(sm);
  l := 2147483647; l := l + 1; writeln(l);
  i := 2147483647; i := i + 1; writeln(i);
  i64 := 5000000000; l := i64; writeln(l);
  sh := i64; writeln(sh);
  sm := l; writeln(sm);
end.
