program forctl(output);
type digit = 0..9;
var i, s: integer; d: digit;
procedure p;
var i: 1..9; t: integer;
begin t := 0; for i := 1 to 9 do t := t + i; for i := 9 downto 1 do t := t + i; writeln('p ', t) end;
begin
  p; s := 0;
  for i := 0 to 20 do s := s + i;
  for d := 0 to 9 do s := s + d;
  writeln('main ', s)
end.
