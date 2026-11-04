{$mode fpc}
program pa07_churn;
type
  tvec = array of word;
var
  keep : array [1..50] of tvec;
  tmp : tvec;
  i, j : longint;
  s : int64;
procedure local(k : longint);
var
  t : array [1..1000] of byte;
  i : longint;
begin
  for i := 1 to 1000 do t[i] := (i + k) mod 256;
  s := s + t[1000] + t[1]
end;
begin
  s := 0;
  for i := 1 to 50 do begin setlength(tmp, 2000); for j := 0 to 1999 do tmp[j] := i + j; keep[i] := tmp end;
  for i := 1 to 3000 do begin local(i); setlength(tmp, 1500 + i mod 700); tmp[7] := i; keep[1 + i mod 50] := tmp end;
  for i := 1 to 50 do s := s + keep[i][7] + length(keep[i]);
  writeln(s)
end.
