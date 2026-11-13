program ordrange(output);
type color = (red, green, blue); shade = red..green;
var i, n: integer; c, d: char; k: color; b: boolean; s: shade;
begin
  i := maxint - 1; i := succ(i); n := -maxint + 1; n := pred(n);
  writeln(i:1, ' ', n:1);
  k := red; while k <> blue do k := succ(k); writeln(ord(k):1);
  k := blue; while k <> red do k := pred(k); writeln(ord(k):1);
  c := 'a'; d := succ(c); c := 'z'; c := pred(c); writeln(c, d);
  b := false; b := succ(b); writeln(b);
  s := red; k := succ(s); writeln(ord(k):1);
  n := 0; for i := 32 to 126 do if chr(i) = 'A' then n := i; writeln(n:1, ' ', chr(n + 1))
end.
