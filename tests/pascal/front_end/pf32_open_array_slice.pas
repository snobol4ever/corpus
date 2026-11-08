{$mode fpc}
type PC = ^Cardinal;
var p: PC; b: array[0..7] of Cardinal; i: integer;
procedure PA(const a: array of Cardinal);
var k: integer;
begin
  for k := 0 to High(a) do write(a[k], ' ');
  writeln;
end;
begin
  for i := 0 to 7 do b[i] := i * 10;
  p := @b[0];
  PA(p[0..3]);
  PA(p[2..5]);
  PA(b[1..3]);
end.
