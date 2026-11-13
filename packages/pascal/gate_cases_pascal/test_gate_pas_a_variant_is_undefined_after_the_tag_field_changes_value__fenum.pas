program fenum(output);
type color = (red, green, blue);
var s: record n: integer; case k: color of red: (r: integer); green, blue: (g: char; h: char) end; x: char;
begin s.n := 1; s.k := green; s.g := 'a'; s.h := 'b'; writeln('ok'); s.k := red; s.r := 2; s.k := blue; x := s.h; writeln('after') end.
