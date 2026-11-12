{$mode objfpc}
program tctl;
type r = record a: integer; b: string; c: char; p: ansistring end;
     pr = ^r;
var s, u: string; c: char; x: r; p: pr; a: array[1..2] of r; n: integer; cs: set of char;
function f(a: string): string; begin f := a + '!' end;
function g(a: integer): string; begin g := 'n' end;
function h(c: char): string; begin h := c end;
procedure show(a: string; b: string); begin writeln(a, '/', b, length(a)) end;
begin
  s := 'ab'; s := s + 'x'; writeln(s);
  s := s + s; writeln(s, length(s));
  c := 'z'; u := 'ab'; u := u + c; writeln(u);
  u := 'x' + u; writeln(u);
  u := 'ab' + 'cd' + 'ef'; writeln(u);
  c := 'a'; u := c + 'b'; writeln(u);
  writeln('a' + 'b');
  x.b := 'q'; writeln(x.b); x.b := x.b + 'r'; writeln(x.b);
  x.p := 'a'; writeln(x.p);
  new(p); p^.b := 'w'; writeln(p^.b);
  a[2].b := 'm'; writeln(a[2].b);
  with x do begin b := 'y'; c := 'z'; writeln(b, c) end;
  c := 'k'; x.b := c; writeln(x.b);
  writeln(f('a') + f('b'));
  writeln(g(1) + g(2), length(f('abc')));
  c := 'w'; writeln(h(c) + h('v'));
  show(c, 'z'); show('p', 'qq');
  if s + 'y' = 'ababx' + 'y' then writeln('eq');
  n := 3; writeln(n + 4);
  cs := ['a'..'c']; cs := cs + ['x']; if 'x' in cs then writeln('in')
end.
