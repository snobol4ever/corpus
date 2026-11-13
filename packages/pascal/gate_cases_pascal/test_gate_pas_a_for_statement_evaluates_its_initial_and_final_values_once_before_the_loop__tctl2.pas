program tctl2(output);
var i, n, lim, depth: integer; c: char; seq: integer;
function a: integer; begin seq := seq * 10 + 1; a := 1 end;
function b: integer; begin seq := seq * 10 + 2; b := 3 end;
procedure rec(d: integer);
var k, m: integer;
begin
  m := 0;
  for k := 1 to d do begin m := m + 1; if d > 1 then rec(d - 1) end;
  write(m:2)
end;
begin
  seq := 0; for i := a to b do n := i; writeln(seq);
  lim := 3; for c := 'a' to chr(ord('a') + lim) do begin write(c); lim := 0 end; writeln;
  lim := 2; for i := 5 downto lim + 1 do begin write(i:2); lim := 9 end; writeln;
  rec(3); writeln;
  for i := 1 to 0 do writeln('never'); n := 0; lim := 2; for i := 3 to lim + 2 do n := n + i; writeln(n)
end.
