program ustr(output);
type string = packed array [1..6] of char;
var l: array [1..3] of string; s: string; i: integer;
begin l[1] := 'one   '; l[2] := 'two   '; s := 'three '; l[3] := s; for i := 1 to 3 do writeln(l[i], '|'); writeln(s, l[2][2]) end.
