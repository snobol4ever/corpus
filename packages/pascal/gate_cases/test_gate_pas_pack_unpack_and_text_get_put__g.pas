program p4kit;
var a: array [1..10] of char; z: packed array [1..4] of char; i: integer; f: text; ch: char; n: integer;
begin
  for i := 1 to 10 do a[i] := chr(ord('a') + i - 1);
  pack(a, 3, z); writeln(z);
  z := 'WXYZ'; unpack(z, a, 6); for i := 1 to 10 do write(a[i]); writeln;
  rewrite(f); f^ := 'x'; put(f); f^ := 'y'; put(f); writeln(f, 'z');
  reset(f); n := 0; while not eof(f) do begin ch := f^; get(f); n := n + 1 end;
  writeln(n)
end.
