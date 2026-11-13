program recs(output);
type cell = record k: integer; c: char end;
     cells = array [1..3] of cell;
var s, t: cells; i: integer;
begin
  for i := 1 to 3 do begin t[i].k := i * 10; t[i].c := chr(ord('a') + i) end;
  s := t; s[1].k := 9; s[2].c := 'z';
  writeln('t1=', t[1].k:1, ' t2=', t[2].c, ' s1=', s[1].k:1, ' s2=', s[2].c);
  t := s; t[3].k := 33; writeln('t1=', t[1].k:1, ' t2=', t[2].c, ' t3=', t[3].k:1, ' s3=', s[3].k:1)
end.
