program ctl(output);
type r = record x, y: integer end;
var a: array [1..10] of integer; z: array [0..9] of integer; c: array ['a'..'c'] of integer;
    q: array [1..3] of r; b: array [1..3] of boolean; i: integer; ch: char;
begin
  for i := 1 to 10 do a[i] := i * i; for i := 0 to 9 do z[i] := a[i + 1] - i; for ch := 'a' to 'c' do c[ch] := ord(ch);
  for i := 1 to 3 do begin q[i].x := i; q[i].y := -i; b[i] := odd(i) end;
  for i := 1 to 10 do write(a[i]:4); writeln; for i := 0 to 9 do write(z[i]:4); writeln;
  writeln(c['a']:4, c['c']:4, q[2].x:4, q[3].y:4, ord(b[1]):2, ord(b[2]):2)
end.
