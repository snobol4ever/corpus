program kinds(output);
type crow = array [0..2] of char; brow = array [1..2] of boolean;
var m: array [1..2] of crow; b: array [0..1] of array [1..2] of boolean; c: array [1..2] of brow; i: integer;
begin
  for i := 0 to 2 do begin m[1][i] := chr(97 + i); m[2, i] := chr(65 + i) end; m[2] := m[1]; m[1][0] := 'z'; writeln(m[1][0], m[2][0], m[2, 2]);
  b[0][1] := true; b[1, 2] := false; c[2][1] := 3 > 2; c[1] := c[2]; writeln(b[0][1], b[1, 2], c[1][1], not c[2, 1]);
  if b[0, 1] and c[1][1] then writeln('both')
end.
