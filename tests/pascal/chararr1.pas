program chararr1;
var s: packed array [1..8] of char;
    i: integer;
begin
  s[1] := 'h'; s[2] := 'e'; s[3] := 'l'; s[4] := 'l';
  s[5] := 'o'; s[6] := ' '; s[7] := ' '; s[8] := ' ';
  for i := 1 to 8 do write(s[i]);
  writeln
end.
