{$mode fpc}
program pa06_unpacked;
type
  trec = record x, y : longint end;
  tset = set of 0..15;
var
  ar : array [1..3] of real;
  ast : array [1..3] of string;
  arec : array [1..3] of trec;
  aset : array [1..2] of tset;
  ap : array [1..2] of ^longint;
  i : longint;
  n1, n2 : longint;
begin
  for i := 1 to 3 do begin ar[i] := i / 4; ast[i] := 'str' + chr(ord('0') + i); arec[i].x := i; arec[i].y := -i end;
  aset[1] := [1, 3, 5]; aset[2] := [2, 4];
  n1 := 11; n2 := 22; ap[1] := @n1; ap[2] := @n2;
  for i := 1 to 3 do writeln(ar[i] : 0 : 2, ' ', ast[i], ' ', arec[i].x + arec[i].y);
  writeln(3 in aset[1], ' ', 3 in aset[2], ' ', ap[1]^ + ap[2]^)
end.
