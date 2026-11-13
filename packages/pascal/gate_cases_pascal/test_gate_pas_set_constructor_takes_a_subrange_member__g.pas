program setrange;
type sym = (a, b, c, d, e, f);
var letters: set of char; nums: set of 0..20; syms: set of sym; lo, hi, i: integer; ch: char; n: integer;
begin
  letters := ['A'..'Z', 'x'];
  nums := [1..3, 7, 9..10];
  syms := [b..d, f];
  lo := 12; hi := 15; nums := nums + [lo..hi];
  n := 0; for ch := 'A' to 'z' do if ch in letters then n := n + 1; writeln(n);
  n := 0; for i := 0 to 20 do if i in nums then n := n + 1; writeln(n);
  if (b in syms) and (c in syms) and not (a in syms) and not (e in syms) and (f in syms) then writeln('syms ok') else writeln('syms bad');
  if [2..3] <= nums then writeln('sub ok') else writeln('sub bad');
  if ['a'..'c'] * letters = [] then writeln('empty ok') else writeln('empty bad');
  hi := 2; if [lo..hi] = [] then writeln('rev ok') else writeln('rev bad')
end.
