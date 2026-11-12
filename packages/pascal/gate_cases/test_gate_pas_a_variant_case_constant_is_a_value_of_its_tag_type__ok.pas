program varctl(output);
type color = (red, green, blue, gray); warm = red..green;
     shape = record
               n: integer;
               case k: color of
                 red, gray: (i: integer);
                 green: (c: char);
                 blue: (b: boolean)
             end;
     flag = record case f: boolean of true: (x: integer); false: (y: char) end;
     part = record case w: warm of red: (p: integer); green: (q: integer) end;
     bare = record case color of red, green: (u: integer); blue, gray: (v: char) end;
var s: shape; t: flag; p: part; b: bare;
begin
  s.n := 1; s.k := green; s.c := 'z'; t.f := true; t.x := 5; p.w := green; p.q := 9; b.u := 4;
  writeln(s.n:1, ' ', ord(s.k):1, ' ', s.c, ' ', t.x:1, ' ', p.q:1, ' ', b.u:1)
end.
