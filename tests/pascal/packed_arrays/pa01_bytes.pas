{$mode fpc}
program pa01_bytes;
const
  N = 100000000;
var
  a : array [1..N] of byte;
  i : longint;
  s : int64;
begin
  for i := 1 to N do
    a[i] := i mod 251;
  s := 0;
  for i := 1 to N do
    s := s + a[i];
  writeln(s);
  writeln(a[1], ' ', a[250], ' ', a[251], ' ', a[N])
end.
