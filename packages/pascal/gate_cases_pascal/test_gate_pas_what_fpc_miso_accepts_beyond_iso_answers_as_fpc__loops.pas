program loops(output);
var i, j, s: integer;
begin
  s := 0; for i := 1 to 10 do begin if i = 3 then continue; if i = 7 then break; s := s + i end; writeln(s, ' ', i);
  i := 0; s := 0; while i < 20 do begin i := i + 1; if odd(i) then continue; if i > 12 then break; s := s + i end; writeln(s, ' ', i);
  i := 0; repeat i := i + 1; if i = 2 then continue; if i = 5 then break; write(i) until i > 8; writeln;
  for i := 1 to 3 do begin for j := 1 to 3 do begin if j = 2 then break; write(i, j) end; if i = 2 then continue; write('|') end; writeln;
  for i := 3 downto 1 do begin if i = 2 then continue; write(i) end; writeln
end.
