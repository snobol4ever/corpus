program tctl4(output);
type
  kind = (ki, kr, kc, kb, ks);
  cell = record case kind of ki: (i: integer); kr: (r: real); kc: (c: char); kb: (b: boolean); ks: (s: set of 0..30) end;
var st: array[0..3] of cell; x: cell; n: integer; q: real; ch: char; f: boolean; ss: set of 0..30;
begin
  x.i := 17; n := x.i div 5 + x.i mod 5; writeln(n, ' ', x.i * 2 - 1, ' ', abs(-x.i), ' ', sqr(x.i), ' ', odd(x.i));
  if x.i > 10 then writeln('gt') else writeln('le');
  if (x.i >= 17) and (x.i <> 3) then writeln('ge');
  x.i := -x.i; writeln(x.i, ' ', abs(x.i));
  x.r := 7.5; q := x.r / 2.0; writeln(q:8:3, ' ', x.r * 2.0:8:3, ' ', x.r + 1.0:8:2, ' ', trunc(x.r), ' ', round(x.r), ' ', sqrt(x.r):8:4);
  if x.r > 2.5 then writeln('rgt'); if x.r = 7.5 then writeln('req');
  x.r := x.r / 3.0; writeln(x.r:10:6); x.r := -x.r; writeln(x.r:10:6, ' ', abs(x.r):10:6);
  x.c := 'k'; ch := x.c; writeln(ch, ' ', ord(x.c), ' ', succ(x.c), ' ', pred(x.c), ' ', chr(ord(x.c) + 1));
  if x.c = 'k' then writeln('ceq'); if x.c < 'z' then writeln('clt'); x.c := chr(ord(x.c) + 1); writeln(x.c);
  x.b := true; f := x.b; writeln(f, ' ', x.b and f, ' ', x.b or false);
  if x.b then writeln('bt'); if x.b then writeln('bnot') else writeln('bf');
  x.b := false; writeln(x.b); x.b := (n > 3); writeln(x.b);
  x.s := [1, 3, 5]; ss := x.s + [7]; writeln(5 in ss, ' ', 7 in x.s, ' ', 3 in x.s);
  x.s := x.s * [3, 5, 9]; for n := 0 to 10 do if n in x.s then write(n:2); writeln;
  x.s := x.s - [3]; for n := 0 to 10 do if n in x.s then write(n:2); writeln;
  ss := [5]; writeln(x.s = ss, ' ', x.s <= ss, ' ', x.s >= ss, ' ', x.s <> ss);
  x.s := []; writeln(x.s = []);
  st[2].i := 40; st[2].i := st[2].i + 2; st[3].r := st[2].i; writeln(st[2].i, ' ', st[3].r:8:2);
  for n := 0 to 3 do begin st[n].i := n * 10; end; n := 0; while st[n].i < 25 do n := n + 1; writeln(n);
  st[1].c := 'a'; st[1].c := succ(st[1].c); writeln(st[1].c);
  st[0].b := true; st[0].b := st[0].b and (st[1].c = 'b'); writeln(st[0].b);
end.
