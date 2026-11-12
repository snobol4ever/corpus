program tconsts(output);
const w: array [0..7] of integer = (+6, +4, +2, +4, +2, +4, +6, +2); n: integer = 5;
  bs: array [boolean] of char = ('F', 'T'); cv: array ['1'..'3'] of char = ('A', 'C', 'G');
  half: record num, den: integer end = (num: 1; den: 2);
  m: array [0..1, 0..2] of integer = ((1, 2, 3), (4, 5, 6)); pts: array [1..2] of record x, y: real end = ((x: 1.5; y: 2.0), (x: -1.0; y: 0.5));
  rr: real = 2.5; cc: char = 'q'; colours: array [(red, green, blue)] of integer = (7, 8, 9);
var i: integer;
procedure show; const loc: array [1..3] of integer = (10, 20, 30); begin writeln(loc[1] + loc[3]) end;
begin
  for i := 0 to 7 do write(w[i]); writeln(' ', n, ' ', bs[true], bs[false], cv['2'], ' ', half.num, '/', half.den, ' ', m[1, 2], m[0, 1]);
  writeln(pts[2].x:0:1, ' ', pts[1].y:0:1, ' ', rr:0:1, cc, ' ', colours[green]); show
end.
