program ctl(output);
const c = 'x'; n = 5; t = true;
type color = (red, green, blue);
procedure a(p: char; q: integer; r: color; s: boolean; u: real);
begin writeln(p, q, ord(r), s, u:4:1) end;
begin
  a(c, n, green, t, 3);
  a('y', -2, blue, false, 2.5)
end.
