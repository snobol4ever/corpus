program chararr2;
type alpha = packed array [1..8] of char;
var id: alpha;
    i: integer;
begin
  id[1] := 'p'; id[2] := 'a'; id[3] := 's'; id[4] := 'c';
  id[5] := 'a'; id[6] := 'l'; id[7] := ' '; id[8] := ' ';
  for i := 1 to 8 do write(id[i]);
  writeln
end.
