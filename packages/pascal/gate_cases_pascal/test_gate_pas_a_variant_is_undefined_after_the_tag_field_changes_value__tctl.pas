program tctl(output);
type color=(red,green,blue);
  shape=record n: integer; case k: color of red:(r:integer); green,blue:(g:char; h:char) end;
  flip=record case b: boolean of true:(i:integer); false:(c:char) end;
  pun=record case integer of 1:(i:integer); 2:(c:char) end;
var s, t: shape; f: flip; u: pun; x, y: integer; kk: color; ch: char;
procedure setit(var q: integer); begin q := 5 end;
function getit(var q: integer): integer; begin q := 6; getit := q end;
procedure p;
var l: flip;
begin l.b := true; l.i := 7; writeln(l.i); l.b := false; l.c := 'p'; writeln(l.c); l.b := true; l.i := 8; writeln(l.i) end;
begin
  s.n := 4; s.k := red; s.r := 10; writeln(s.r); s.k := green; s.g := 'a'; s.h := 'b'; writeln(s.g, s.h, s.n:2);
  t.n := 9; t.k := blue; t.g := 'z'; s.k := red; s.r := 3; writeln(t.g, s.r:2, t.n:2);
  f.b := true; f.i := 5; f.b := true; writeln(f.i);
  f.b := false; f.c := 'q'; f.b := false; writeln(f.c);
  u.i := 65; writeln(u.i);
  kk := green; s.k := kk; s.g := 'm'; writeln(s.g);
  for x := 1 to 3 do begin f.b := (x mod 2 = 1); if f.b then begin f.i := x; writeln(f.i) end else begin f.c := chr(64 + x); writeln(f.c) end end;
  p;
  f.b := true; setit(f.i); writeln(f.i); f.b := false; f.b := true; writeln(getit(f.i), f.i); read(f.i); writeln(f.i);
  s.k := red; s.r := 11; y := s.r + s.n; writeln(y)
end.
