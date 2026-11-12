program wholefill;
{$mode objfpc}
type
  tLine = array [0..4] of int64;
  tGrid = array [1..3] of tLine;
  tRec = record n: integer; r: real; c: char; b: boolean; a: array [1..3] of word end;
var g: tGrid; r: tRec; f: array [1..4] of boolean; i, j: integer; ch: array [1..5] of char;
procedure Clear(var s: tGrid); begin fillchar(s, sizeof(s), #0) end;
begin
  for i := 1 to 3 do for j := 0 to 4 do g[i][j] := i * 10 + j;
  Clear(g); writeln(g[2][3], ' ', g[3][4]);
  r.n := 5; r.r := 2.5; r.c := 'x'; r.b := true; r.a[2] := 9;
  fillchar(r, sizeof(r), 0); writeln(r.n, ' ', r.r:0:1, ' ', ord(r.c), ' ', r.b, ' ', r.a[2]);
  fillchar(f, sizeof(f), true); writeln(f[1], ' ', f[4]);
  fillchar(ch, sizeof(ch), '*'); for i := 1 to 5 do write(ch[i]); writeln
end.
