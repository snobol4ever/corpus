program elemsize;
{$mode objfpc}
type TIA = array of int64;
var g: array of integer; s: array [1..4] of word; t: TIA; r: array [0..2] of real; b: array of byte; i: integer;
begin
  setlength(g, 5); setlength(t, 4); setlength(b, 1);
  writeln(SizeOf(g[0]), ' ', SizeOf(s[1]), ' ', SizeOf(t[0]), ' ', SizeOf(r[2]), ' ', SizeOf(b[0]), ' ', SizeOf(s), ' ', SizeOf(integer));
  for i := 0 to 4 do g[i] := i + 1; fillchar(g[0], length(g) * SizeOf(g[0]), #0); writeln(g[0], g[4]);
  for i := 0 to 3 do t[i] := 9; fillchar(t[1], 2 * SizeOf(t[0]), 0); for i := 0 to 3 do write(t[i]); writeln
end.
