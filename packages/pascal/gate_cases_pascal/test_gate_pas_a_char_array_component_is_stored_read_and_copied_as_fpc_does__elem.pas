program elem(output);
type s8 = packed array [1..8] of char; bs = record len: integer; str: s8 end;
var prgm: array [0..3] of s8; t: array [1..3] of bs; temp: array [1..3] of record typ: integer; int: integer; bstr: bs end; x, y, top: integer;
begin
  for x := 1 to 3 do for y := 1 to 8 do prgm[x][y] := ' '; prgm[2][3] := 'q'; writeln('[', prgm[2], ']');
  prgm[1, 2] := 'c'; x := 2; writeln(prgm[2][3], prgm[x, 3], prgm[1][2], prgm[x - 1, x]);
  for y := 1 to 8 do t[2].str[y] := chr(ord('a') + y - 1); writeln(t[2].str, ' ', t[2].str[3]);
  top := 2; for y := 1 to 8 do temp[top].bstr.str[y] := chr(ord('k') + y - 1); temp[top].bstr.len := 8; writeln(temp[top].bstr.str, ' ', temp[top].bstr.len, ' ', temp[2].bstr.str[3])
end.
