program lb(output);
type idx = 3..7; negt = array [-3..3] of integer; small = 1..5;
var n: array [-2..2] of integer; f: array [5..9] of integer; g: array [idx] of integer; t: negt;
    e: array [0..9] of small; c: array ['c'..'f'] of integer; s: array [smallint] of integer; i: integer; ch: char;
procedure loc;
var q: array [-4..1] of integer; k: integer;
begin
  for k := low(q) to high(q) do q[k] := k * k;
  for k := -4 to 1 do write(q[k]:3); writeln(' loc ', low(q):1, ' ', high(q):1)
end;
begin
  for i := -2 to 2 do n[i] := i * 10;
  for i := low(n) to high(n) do write(n[i]:4); writeln(' n ', low(n):1, ' ', high(n):1);
  for i := low(f) to high(f) do f[i] := i; for i := 5 to 9 do write(f[i]:2); writeln(' f ', low(f):1, ' ', high(f):1);
  for i := low(g) to high(g) do g[i] := -i; for i := 3 to 7 do write(g[i]:3); writeln(' g ', low(g):1, ' ', high(g):1);
  for i := -3 to 3 do t[i] := i + 100; for i := low(t) to high(t) do write(t[i]:4); writeln(' t ', low(t):1, ' ', high(t):1);
  for i := 0 to 9 do e[i] := i mod 5 + 1; for i := low(e) to high(e) do write(e[i]:2); writeln(' e ', low(e):1, ' ', high(e):1);
  for ch := 'c' to 'f' do c[ch] := ord(ch); writeln(c['c']:4, c['f']:4, ' c ', ord(low(c)):1, ' ', ord(high(c)):1);
  s[-32768] := 7; s[0] := 8; s[32767] := 9; writeln(s[-32768]:2, s[0]:2, s[32767]:2, ' s ', low(s):1, ' ', high(s):1);
  loc
end.
