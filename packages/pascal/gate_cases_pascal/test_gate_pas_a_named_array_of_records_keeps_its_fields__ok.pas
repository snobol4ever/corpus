program namedarr(output);
type pt = record v: integer; c: char end;
     row = array [1..4] of pt;
     table = row;
var r: row; t: table; i, s: integer;
begin
  for i := 1 to 4 do begin r[i].v := i * i; r[i].c := chr(ord('a') + i) end;
  s := 0; for i := 1 to 4 do s := s + r[i].v;
  t[3].v := 30; t[3].c := 'z';
  writeln(s:1, ' ', r[2].v:1, ' ', r[4].c, ' ', t[3].v:1, ' ', t[3].c)
end.
