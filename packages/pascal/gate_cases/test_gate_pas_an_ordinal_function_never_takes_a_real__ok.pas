program ordfn(output);
type color = (red, green, blue); number = real;
var r, i, j: integer; c, d, e: char; k: color; b: boolean; x: number;
procedure local;
var q: real;
begin q := 2.5; writeln('local real ', q:4:1, ' ', trunc(q):1, ' ', round(q):1) end;
begin
  r := 41; c := 'b'; k := green; b := false; x := 1.5;
  local;
  i := succ(r); j := pred(r); d := succ(c); e := pred(c);
  writeln(i:1, ' ', j:1, ' ', ord(c):1, ' ', d, ' ', e);
  i := ord(succ(k)); j := ord(pred(k)); writeln(ord(k):1, ' ', i:1, ' ', j:1, ' ', ord(b):1);
  i := trunc(x); d := chr(i + 64); j := succ(trunc(x)); writeln(d, ' ', i:1, ' ', j:1)
end.
