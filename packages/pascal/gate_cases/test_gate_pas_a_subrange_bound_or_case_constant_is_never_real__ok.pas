program ordctl(output);
const r = 1.5; m = -2.5e1; p = +0.25; lo = 2; hi = 7;
type small = lo..hi; letter = 'a'..'e'; color = (red, green, blue); warm = red..green;
     shape = record case k: color of red: (x: integer); green, blue: (y: char) end;
var s: small; c: letter; w: warm; v: shape; i: integer;
begin
  writeln(r:6:2, m:8:2, p:6:2);
  s := 5; c := 'c'; w := green; v.k := green; v.y := 'q';
  for i := 1 to 3 do
    case i of
      1: writeln('one ', s:1);
      2, 3: writeln('two or three ', ord(c) - ord('a'):1)
    end;
  case c of 'a', 'b': writeln('ab'); 'c': writeln('c') end;
  if w = green then writeln('warm green ', v.y)
end.
