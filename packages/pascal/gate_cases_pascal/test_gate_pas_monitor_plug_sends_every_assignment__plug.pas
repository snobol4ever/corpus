program plug(output);
type e = (red, green, blue); r = record f1: e; f2: integer end;
var p: packed array [1..4] of char; v: r; a: array [1..3] of e; c: e; f: file of integer; i: integer;
begin
  p := 'ABCD';
  v.f1 := green; v.f2 := 5; a[2] := blue; c := red;
  rewrite(f); f^ := 42; writeln(f^:1); put(f);
  i := ord(v.f1) + ord(a[2]);
  writeln(p, ' ', i:1, ' ', ord(c):1)
end.
