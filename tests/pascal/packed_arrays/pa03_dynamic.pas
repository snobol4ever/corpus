{$mode fpc}
program pa03_dynamic;
type
  tvec = array of longword;
var
  a, b : tvec;
  c : array of byte;
  i : longint;
  s : int64;
begin
  setlength(a, 10);
  for i := 0 to 9 do a[i] := i * 1000;
  b := a;
  b[3] := 7;
  writeln(a[3], ' ', length(a), ' ', high(a), ' ', low(a));
  setlength(a, 20);
  for i := 10 to 19 do a[i] := i;
  s := 0; for i := 0 to high(a) do s := s + a[i]; writeln(s, ' ', length(a));
  setlength(c, 5);
  for i := 0 to 4 do c[i] := 200 + i;
  s := 0; for i := 0 to 4 do s := s + c[i]; writeln(s);
  setlength(a, 0); writeln(length(a));
  setlength(c, 3); writeln(length(c), ' ', c[0], ' ', c[2])
end.
