program dswfn;
var glob: integer;
function countchars: integer;
begin
  countchars := 255;
  if glob = 5 then countchars := 0
  else begin inc(glob); countchars := 1 + countchars end
end;
begin
  glob := 0;
  writeln(countchars)
end.
