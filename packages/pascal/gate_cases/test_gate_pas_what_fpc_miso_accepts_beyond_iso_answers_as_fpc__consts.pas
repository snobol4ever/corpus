program consts(output);
const a = 'ab' + 'cd'; b = 3 * 4 + 1; c = b div 2 - 1; r = 1.5 * 2; neg = -b; q = 7 mod 3; ch = 'x'; dot = ch + '.'; h = 10 / 4;
  vowels = ['a', 'e', 'i', 'o', 'u']; digits = ['0'..'9']; r2 = sqrt(2.0); big = 10 * maxint div 100000; flag = not false; t = pi / 2;
var arr: array [1..b] of integer; k: char; n: integer;
procedure inner; const vowels = ['x']; begin writeln('x' in vowels, 'a' in vowels) end;
begin
  arr[b] := 2; writeln(a, ' ', b, ' ', c, ' ', r:0:2, ' ', neg, ' ', q, ' ', dot, ' ', h:0:2, ' ', arr[13]);
  n := 0; for k := 'a' to 'z' do if k in vowels then n := n + 1; writeln(n, '7' in digits, r2:0:4, ' ', big, ' ', flag, ' ', t:0:5, ' ', pi:0:5); inner
end.
