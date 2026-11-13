program rd(input, output);
type s8 = packed array [1..8] of char;
var a: s8; prgm: array [0..3] of s8;
procedure inp(var str: s8); var i: integer; begin for i := 1 to 8 do str[i] := ' '; i := 1; while (i <= 8) and not eoln do begin read(str[i]); i := i + 1 end; readln end;
begin inp(a); writeln('[', a, ']'); inp(prgm[0]); writeln('[', prgm[0], ']') end.
