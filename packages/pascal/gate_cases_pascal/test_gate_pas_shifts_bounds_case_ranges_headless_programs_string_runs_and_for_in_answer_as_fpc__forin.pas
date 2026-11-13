program fi3(output);
type e = (r, g, b);
var s: set of e; x: e; c: char; t, k: integer; a: array [3..5] of integer; d: array of integer; cs: set of char; str: packed array [1..3] of char;
begin
  s := [r, b]; t := 0; for x in s do t := t + ord(x); writeln(t);
  for c in 'abc' do write(c); writeln;
  a[3] := 1; a[4] := 2; a[5] := 3; t := 0; for k in a do t := t * 10 + k; writeln(t);
  setlength(d, 3); d[0] := 7; d[1] := 8; d[2] := 9; for k in d do write(k); writeln;
  cs := ['x', 'b', 'm']; for c in cs do write(c); writeln;
  str := 'pqr'; for c in str do write(c, '.'); writeln;
  for k in a do begin if k = 2 then continue; write(k) end; writeln
end.
