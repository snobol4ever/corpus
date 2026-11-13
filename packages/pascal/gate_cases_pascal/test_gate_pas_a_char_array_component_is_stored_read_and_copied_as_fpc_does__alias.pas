program alias(output);
type rt = record a, b: integer end; at = array [1..3] of integer; s8 = packed array [1..8] of char;
var g, h: rt; ga, ha: at; tab: array [1..2] of rt; taa: array [1..2] of at; prgm: array [0..3] of s8; a: s8;
procedure keep(var r: rt; var x: at); begin g := r; ga := x; tab[1] := r; taa[2] := x end;
procedure vkeep(r: rt); begin g := r; r.a := 77; writeln(g.a, ' ', r.a) end;
procedure enter(var str: s8; i: integer); begin prgm[i] := str end;
begin
  h.a := 1; h.b := 2; ha[1] := 5; ha[2] := 6; ha[3] := 7; keep(h, ha); h.a := 99; ha[1] := 99; writeln(g.a, ga[1], tab[1].a, taa[2][1]);
  vkeep(h); writeln(g.a, ' ', h.a);
  a := 'first   '; enter(a, 1); a[1] := 'X'; prgm[0] := 'second  '; enter(prgm[0], 2); prgm[0] := 'third   '; writeln(prgm[0]); writeln(prgm[1]); writeln(prgm[2]); writeln(a)
end.
