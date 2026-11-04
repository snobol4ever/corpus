{$mode fpc}
program pa08_wide;
type
  tvec = array of word;
var
  a : array of double;
  keep : array [1..50] of tvec;
  tmp : tvec;
  i, j : longint;
  s : int64;
begin
  setlength(a, 300000000);
  a[0] := 7; a[150000000] := 11; a[high(a)] := 13;
  for i := 1 to 3000 do begin setlength(tmp, 30000); for j := 0 to 9 do tmp[j] := i + j; keep[1 + i mod 50] := tmp end;
  s := 0; for i := 1 to 50 do s := s + keep[i][3] + length(keep[i]);
  writeln(trunc(a[0] + a[150000000] + a[high(a)]), ' ', length(a), ' ', s)
end.
