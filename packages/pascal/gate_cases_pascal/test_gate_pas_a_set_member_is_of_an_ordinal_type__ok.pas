program setctl(output);
type color = (red, green, blue);
var i, n: integer; c: char; k: color; s: set of 0..20; cs: set of char; ks: set of color;
begin
  i := 3; n := 7; c := 'q'; k := green;
  s := [i, n]; s := s + [1..2]; s := s + [i + 10]; cs := ['a'..'e', c]; ks := [red, k];
  n := 0; for i := 0 to 20 do if i in s then n := n + i;
  writeln(n:1, ' ', 'c' in cs, ' ', c in cs, ' ', 'z' in cs, ' ', blue in ks, ' ', green in ks)
end.
