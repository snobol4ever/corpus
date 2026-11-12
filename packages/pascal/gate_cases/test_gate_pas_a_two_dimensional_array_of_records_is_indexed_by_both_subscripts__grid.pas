program grid(output);
type cell = record v: integer; ok: boolean end;
var g: array [0..2, 0..3] of cell; i, j, s: integer;
begin
  for i := 0 to 2 do for j := 0 to 3 do begin g[i, j].v := i * 10 + j; g[i, j].ok := odd(i + j) end;
  s := 0;
  for i := 0 to 2 do for j := 0 to 3 do if g[i, j].ok then s := s + g[i, j].v;
  writeln(s, ' ', g[2, 3].v, ' ', g[1, 0].v, ' ', g[0, 2].v)
end.
