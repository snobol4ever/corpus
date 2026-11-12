program elemfill;
{$mode objfpc}
var s: string; g: array of integer; b: array of boolean; p: array [0..9] of byte; w: array [1..6] of word; i: integer;
begin
  setlength(s, 6); fillchar(s[1], 6, ' '); s[3] := 'x'; writeln('[', s, ']', length(s));
  fillchar(s[2], 2, '-'); writeln('[', s, ']');
  setlength(b, 4); fillchar(b[0], length(b), #1); writeln(b[0], ' ', b[3]);
  for i := 0 to 9 do p[i] := 7; fillchar(p[2], 3, 0); for i := 0 to 9 do write(p[i]); writeln;
  for i := 1 to 6 do w[i] := 9; fillchar(w[3], 2 * SizeOf(word), 0); for i := 1 to 6 do write(w[i]); writeln
end.
