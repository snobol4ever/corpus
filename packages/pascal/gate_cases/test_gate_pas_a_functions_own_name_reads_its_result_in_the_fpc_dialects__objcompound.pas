program objcompound;
{$mode objfpc}
type tset = set of 0..9;
var s: string; c: char; i: integer; r: real; t: tset; k: integer;
function Build(n: integer): string;
var j: integer;
begin
  Build := '';
  for j := 1 to n do Build += chr(ord('a') + j - 1);
  Build += '!'
end;
function Acc(n: integer): integer;
begin
  Acc := 0;
  while n > 0 do begin Acc += n; n -= 1 end;
  Acc *= 2
end;
begin
  s := 'ab'; c := 'z'; s += c; s += 'cd'; i := 5; i += 3; i -= 1; i *= 4; r := 10; r /= 4; r += 0.5;
  t := [1, 2]; t += [5]; t -= [1]; t *= [2, 5, 7];
  write(s, ' ', i, ' ', r:0:2, ' ');
  for k := 0 to 9 do if k in t then write(k);
  writeln(' ', Build(4), ' ', Acc(4))
end.
