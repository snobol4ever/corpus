program strarr;
const names: array [0..3] of string = ('alpha', 'beta', '', 'delta');
var s: array [1..4] of string; i, n: integer; u: string;
function Shout(x: string): string; begin Shout := x + '!' end;
procedure Local;
var w: array [5..7] of string; k: integer;
begin
  for k := 5 to 7 do w[k] := Copy('abcdefg', k - 4, k - 4);
  for k := low(w) to high(w) do write(w[k], '/', length(w[k]), ' ');
  writeln(length(w), ' ', w[6] + w[7], ' ', w[7][2])
end;
begin
  for i := 1 to 4 do s[i] := names[i - 1] + 'x';
  s[2] := s[2] + s[1]; u := s[2];
  writeln(u, ' ', s[2][3], ' ', length(s[2]), ' ', length(s), ' ', high(s), ' ', low(names));
  for i := 1 to 4 do writeln(i, ':', s[i], ':', Shout(s[i]), ':', pos('x', s[i]), ':', s[i] = 'deltax', ':', s[i] < 'b');
  n := 0; for i := 0 to 3 do n := n + length(names[i]); writeln(n, ' ', names[3][1], names[0]);
  Local
end.
