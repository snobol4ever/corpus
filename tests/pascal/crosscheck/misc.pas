{------------------------------------------------------------------- 1 alphacmp}
program alphacmp(output);
type alpha = packed array [1..8] of char;
var rw : array [1..5] of alpha;
    rsy: array [1..5] of integer;
    frw: array [1..3] of integer;
    id : alpha;
    sy : integer;

procedure lookup(k: integer);
  label 2;
  var i: integer;
begin
  for i := frw[k] to frw[k+1] - 1 do
    if rw[i] = id then
      begin sy := rsy[i]; goto 2 end;
  sy := 0;
2:
end;

begin
  rw[1] := 'do      '; rw[2] := 'if      '; rw[3] := 'of      ';
  rw[4] := 'end     '; rw[5] := 'for     ';
  rsy[1] := 2; rsy[2] := 1; rsy[3] := 3; rsy[4] := 7; rsy[5] := 8;
  frw[1] := 1; frw[2] := 1; frw[3] := 6;
  id[1] := 'd'; id[2] := 'o'; id[3] := ' '; id[4] := ' ';
  id[5] := ' '; id[6] := ' '; id[7] := ' '; id[8] := ' ';
  lookup(2); writeln(sy);
  id[1] := 'e'; id[2] := 'n'; id[3] := 'd'; id[4] := ' ';
  id[5] := ' '; id[6] := ' '; id[7] := ' '; id[8] := ' ';
  lookup(1); writeln(sy);
  id[1] := 'x'; id[2] := 'x'; id[3] := ' '; id[4] := ' ';
  id[5] := ' '; id[6] := ' '; id[7] := ' '; id[8] := ' ';
  lookup(2); writeln(sy);
end.
{----------------------------------------------------------------- 2 arr2dtype2}
program arr2dtype2;
type row = array[0..2] of integer;
var r: row; i: integer;
function sumrow(a: row): integer;
var j, s: integer;
begin
  s := 0;
  for j := 0 to 2 do s := s + a[j];
  sumrow := s
end;
begin
  for i := 0 to 2 do r[i] := i + 1;
  writeln(sumrow(r))
end.
{--------------------------------------------------------------------- 3 boolfn}
program boolfn;
var r : boolean;
function big(n : integer) : boolean;
begin
  big := n > 10
end;
begin
  r := big(20);
  if r then writeln(1) else writeln(0);
  r := big(5);
  if r then writeln(1) else writeln(0)
end.
{----------------------------------------------------------------- 4 chararrcvc}
program chararrcvc(output);
type alfa = packed array[1..4] of char;
var rw: array[1..3] of alfa;
    i, j, n: integer;
begin
  rw[1] := 'aaaa';
  rw[2] := 'bbbb';
  rw[3] := 'aaaa';
  i := 1; j := 2;
  n := 0;
  if rw[i] < rw[j] then n := n + 1;
  if rw[i] <= rw[j] then n := n + 2;
  if rw[j] > rw[i] then n := n + 4;
  if rw[i] >= rw[j] then n := n + 8;
  if rw[i] = rw[3] then n := n + 16;
  if rw[i] <> rw[j] then n := n + 32;
  writeln(n);
  i := 3; j := 1;
  if rw[i] = rw[j] then writeln('eq') else writeln('ne')
end.
{----------------------------------------------------------------- 5 chararrlit}
program chararrlit(output);
type alpha = packed array[1..8] of char;
var id: alpha;
    n: integer;
begin
  id[1]:='w'; id[2]:='r'; id[3]:='i'; id[4]:='t'; id[5]:='e';
  id[6]:='l'; id[7]:='n'; id[8]:=' ';
  n := 0;
  if id = 'writeln ' then n := n + 1;
  if 'writeln ' = id then n := n + 10;
  if id <> 'readln  ' then n := n + 100;
  if id = 'readln  ' then n := n + 1000;
  writeln(n)
end.
{----------------------------------------------------------------- 6 chararrord}
program chararrord(output);
type alpha = packed array[1..8] of char;
var a, b: alpha; n: integer;
begin
  a[1]:='a';a[2]:='b';a[3]:='c';a[4]:=' ';a[5]:=' ';a[6]:=' ';a[7]:=' ';a[8]:=' ';
  b[1]:='a';b[2]:='b';b[3]:='d';b[4]:=' ';b[5]:=' ';b[6]:=' ';b[7]:=' ';b[8]:=' ';
  n := 0;
  if a < b then n := n + 1;
  if a <= b then n := n + 2;
  if b > a then n := n + 4;
  if a >= b then n := n + 8;
  if a < 'zzz     ' then n := n + 100;
  if a > 'aaa     ' then n := n + 200;
  if 'mmm     ' > a then n := n + 400;
  writeln(n)
end.
{------------------------------------------------------------------ 7 chararrvv}
program chararrvv(output);
type alpha = packed array[1..8] of char;
var a, b: alpha; n: integer;
begin
  a[1]:='w';a[2]:='r';a[3]:='i';a[4]:='t';a[5]:='e';a[6]:='l';a[7]:='n';a[8]:=' ';
  b[1]:='w';b[2]:='r';b[3]:='i';b[4]:='t';b[5]:='e';b[6]:='l';b[7]:='n';b[8]:=' ';
  n := 0;
  if a = b then n := n + 1;
  if a <> b then n := n + 2;
  b[3] := 'o';
  if a = b then n := n + 10;
  if a <> b then n := n + 20;
  writeln(n)
end.
{-------------------------------------------------------------------- 8 charlit}
program charlit(output);
var c : char;
begin
  writeln('A');
  writeln('Z');
  writeln('a':3);
  writeln('0':5);
  c := 'M';
  if c = 'M' then writeln('Y') else writeln('N');
  writeln(ord('A'));
  writeln(ord('Z') - ord('A'))
end.
{---------------------------------------------------------------- 9 chr_writeln}
program t;
var c : char; i : integer;
begin
  writeln(chr(112));
  writeln(chr(65), chr(66), chr(67));
  c := chr(88);
  writeln(c, c);
  i := ord(chr(90));
  writeln(i:1)
end.
{----------------------------------------------------------------- 10 constreal}
program constreal(output);
const
  pi = 3.14159265;
  msg = 'ok';
  limit = 100;
var r : real; i : integer;
begin
  r := pi;
  writeln(r);
  writeln(msg);
  i := limit;
  writeln(i);
  r := -pi;
  writeln(r)
end.
{---------------------------------------------------------------------- 11 disc}
program disc(output);
type
  pp = ^prec;
  prec = record f: integer; ael, inx: pp end;
var arr, s1, s2: pp;
begin
  new(arr); new(s1); new(s2);
  s1^.f := 111; s2^.f := 222;
  arr^.ael := s1; arr^.inx := s2;
  writeln(arr^.ael^.f);
  writeln(arr^.inx^.f)
end.
{----------------------------------------------------------------- 12 emptyproc}
program t(output);
var x: integer;
procedure noop; begin end;
procedure another; begin end;
begin
  x := 1;
  noop;
  x := x + 1;
  another;
  x := x + 1;
  writeln(x)
end.
{--------------------------------------------------------------------- 13 enum1}
program enumtest;
type
  color = (red, green, blue);
  season = (spring, summer, fall, winter);
var
  c: color;
  s: season;
  i: integer;
begin
  c := green;
  s := fall;
  i := ord(c);
  writeln(i);
  if c = green then writeln(1) else writeln(0);
  writeln(ord(winter));
  for c := red to blue do
    writeln(ord(c));
  case s of
    spring: writeln(10);
    summer: writeln(20);
    fall:   writeln(30);
    winter: writeln(40)
  end
end.
{------------------------------------------------------------------- 14 enumarr}
program enumarr(output);
type color = (red, green, blue);
var a: array[color] of integer;
    c: color;
begin
  a[red] := 10; a[green] := 20; a[blue] := 30;
  for c := red to blue do writeln(a[c])
end.
{---------------------------------------------------------------- 15 enumsubarr}
program enumsubarr(output);
type
  season = (spring, summer, fall, winter);
  month = 1..12;
var
  days: array[season] of integer;
  counts: array[month] of integer;
  s: season;
  i: integer;
begin
  days[spring] := 91; days[summer] := 92;
  days[fall] := 91; days[winter] := 90;
  for s := spring to winter do writeln(days[s]);
  for i := 1 to 12 do counts[i] := i * 3;
  writeln(counts[1]);
  writeln(counts[12])
end.
{--------------------------------------------------------------------- 16 hello}
program hello;
begin
  writeln('Hello World!')
end.
{------------------------------------------------------------------ 17 ifnoelse}
program ifnoelse(output);
var i: integer; flag: boolean;
begin
  i := 0;
  flag := true;
  repeat
    i := i + 1;
    if flag then flag := false
  until i >= 3;
  writeln('done i=', i:1)
end.
{------------------------------------------------------------------ 18 intparam}
program intparam(output);
var x: integer;
  function doubled(n: integer): integer;
  begin doubled := n + n end;
begin x := 7; writeln(doubled(x)) end.
{------------------------------------------------------------------ 19 longcall}
program longcall(output);
var g: integer;
  procedure bump;
  begin g := g + 1 end;
begin
  g := 0;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  writeln(g)
end.
{------------------------------------------------------------------- 20 m4arith}
program m4arith;
var x, y : integer;
begin
  x := 2 + 3;
  writeln(x);
  y := x * 7;
  writeln(y);
  y := y - x;
  writeln(y)
end.
{--------------------------------------------------------------------- 21 m4asg}
program m4asg;
var x : integer;
begin
  x := 5;
  writeln(x)
end.
{------------------------------------------------------------------- 22 m4wexpr}
program m4wexpr;
begin
  writeln(2 + 3)
end.
{------------------------------------------------------------------ 23 manyproc}
program manyproc(output);
var g: integer;
  procedure p1; begin g := g + 1 end;
  procedure p2; begin g := g + 1 end;
  procedure p3; begin g := g + 1 end;
  procedure p4; begin g := g + 1 end;
  procedure p5; begin g := g + 1 end;
  procedure p6; begin g := g + 1 end;
  procedure p7; begin g := g + 1 end;
  procedure p8; begin g := g + 1 end;
  procedure p9; begin g := g + 1 end;
  procedure p10; begin g := g + 1 end;
  procedure p11; begin g := g + 1 end;
  procedure p12; begin g := g + 1 end;
  procedure p13; begin g := g + 1 end;
  procedure p14; begin g := g + 1 end;
  procedure p15; begin g := g + 1 end;
  procedure p16; begin g := g + 1 end;
  procedure p17; begin g := g + 1 end;
  procedure p18; begin g := g + 1 end;
  procedure p19; begin g := g + 1 end;
  procedure p20; begin g := g + 1 end;
  procedure p21; begin g := g + 1 end;
  procedure p22; begin g := g + 1 end;
  procedure p23; begin g := g + 1 end;
  procedure p24; begin g := g + 1 end;
  procedure p25; begin g := g + 1 end;
  procedure p26; begin g := g + 1 end;
  procedure p27; begin g := g + 1 end;
  procedure p28; begin g := g + 1 end;
  procedure p29; begin g := g + 1 end;
  procedure p30; begin g := g + 1 end;
  procedure p31; begin g := g + 1 end;
  procedure p32; begin g := g + 1 end;
  procedure p33; begin g := g + 1 end;
  procedure p34; begin g := g + 1 end;
  procedure p35; begin g := g + 1 end;
  procedure p36; begin g := g + 1 end;
  procedure p37; begin g := g + 1 end;
  procedure p38; begin g := g + 1 end;
  procedure p39; begin g := g + 1 end;
  procedure p40; begin g := g + 1 end;
  procedure p41; begin g := g + 1 end;
  procedure p42; begin g := g + 1 end;
  procedure p43; begin g := g + 1 end;
  procedure p44; begin g := g + 1 end;
  procedure p45; begin g := g + 1 end;
  procedure p46; begin g := g + 1 end;
  procedure p47; begin g := g + 1 end;
  procedure p48; begin g := g + 1 end;
  procedure p49; begin g := g + 1 end;
  procedure p50; begin g := g + 1 end;
  procedure p51; begin g := g + 1 end;
  procedure p52; begin g := g + 1 end;
  procedure p53; begin g := g + 1 end;
  procedure p54; begin g := g + 1 end;
  procedure p55; begin g := g + 1 end;
  procedure p56; begin g := g + 1 end;
  procedure p57; begin g := g + 1 end;
  procedure p58; begin g := g + 1 end;
  procedure p59; begin g := g + 1 end;
  procedure p60; begin g := g + 1 end;
  procedure p61; begin g := g + 1 end;
  procedure p62; begin g := g + 1 end;
  procedure p63; begin g := g + 1 end;
  procedure p64; begin g := g + 1 end;
  procedure p65; begin g := g + 1 end;
  procedure p66; begin g := g + 1 end;
  procedure p67; begin g := g + 1 end;
  procedure p68; begin g := g + 1 end;
  procedure p69; begin g := g + 1 end;
  procedure p70; begin g := g + 1 end;
begin
  g := 0;
  p1; p2; p3; p4; p5; p6; p7; p8; p9; p10;
  p11; p12; p13; p14; p15; p16; p17; p18; p19; p20;
  p21; p22; p23; p24; p25; p26; p27; p28; p29; p30;
  p31; p32; p33; p34; p35; p36; p37; p38; p39; p40;
  p41; p42; p43; p44; p45; p46; p47; p48; p49; p50;
  p51; p52; p53; p54; p55; p56; p57; p58; p59; p60;
  p61; p62; p63; p64; p65; p66; p67; p68; p69; p70;
  writeln(g)
end.
{------------------------------------------------------------------- 24 markrel}
program markrel;
var mark: array[0..2, 0..2] of integer;
    i, j: integer;
begin
  for i := 0 to 2 do
    for j := 0 to 2 do
      if i = j then mark[i,j] := 1 else mark[i,j] := 0;
  for i := 0 to 2 do begin
    for j := 0 to 2 do begin
      write(mark[i,j]); write(' ')
    end;
    writeln
  end
end.
{---------------------------------------------------------------------- 25 mir3}
program mir3(output);
type
  sf = (scalar,subrange,pointer,arrays);
  stp = ^structure;
  valu = record case intval: boolean of true:(ival:integer); false:(valp:integer) end;
  structure = packed record
                marked: boolean; size: integer;
                case form: sf of
                  subrange: (rangetype: stp; min,max: valu);
                  arrays:   (aeltype,inxtype: stp)
              end;
var lsp: stp; lvalu: valu;
begin
  new(lsp); lsp^.form := subrange;
  lvalu.ival := 7;
  with lsp^ do begin rangetype := nil; min := lvalu end;
  writeln(ord(lsp^.form));
  writeln(lsp^.min.ival)
end.
{----------------------------------------------------------------- 26 nestcheck}
program nestcheck;
type
  inner = record a, b: integer end;
  outer = record x: integer; c: inner; y: integer end;
var g: outer;
    i: integer;
begin
  g.x := 10;
  g.c.a := 20;
  g.c.b := 30;
  g.y := 40;
  g.c.a := g.c.a + 1;
  g.c.b := g.c.b + 2;
  writeln(g.x);
  writeln(g.c.a);
  writeln(g.c.b);
  writeln(g.y)
end.
{---------------------------------------------------------- 27 nestflat_control}
program flat;
var x : integer;
  procedure p;
  begin
    x := x + 10
  end;
begin
  x := 5;
  p;
  writeln(x)
end.
{------------------------------------------------------------------ 28 nestptr1}
program nestptr1;
type
  inner = record a, b: integer end;
  outer = record x: integer; c: inner; y: integer end;
  outerptr = ^outer;
var p: outerptr;
begin
  new(p);
  p^.x := 1;
  p^.c.a := 42;
  p^.c.b := 7;
  p^.y := 99;
  writeln(p^.x);
  writeln(p^.c.a);
  writeln(p^.c.b);
  writeln(p^.y)
end.
{------------------------------------------------------------------ 29 nestrec1}
program nestrec1;
type
  inner = record a, b: integer end;
  outer = record x: integer; c: inner; y: integer end;
var g: outer;
begin
  g.x := 1;
  g.c.a := 42;
  g.c.b := 7;
  g.y := 99;
  writeln(g.x);
  writeln(g.c.a);
  writeln(g.c.b);
  writeln(g.y)
end.
{----------------------------------------------------------------- 30 nestwith1}
program nestwith1;
type
  valu = record ival: integer; rval: integer end;
  node = record name: integer; values: valu; nxt: integer end;
  nodeptr = ^node;
var lcp: nodeptr;
begin
  new(lcp);
  lcp^.name := 10;
  with lcp^ do values.ival := 55;
  with lcp^ do values.rval := 77;
  writeln(lcp^.name);
  writeln(lcp^.values.ival);
  writeln(lcp^.values.rval)
end.
{----------------------------------------------------------------- 31 realparam}
program realparam(output);
var r: real;
  function half(x: real): real;
  begin half := x / 2.0 end;
begin r := 6.0; writeln(half(r):10:1) end.
{----------------------------------------------------------------- 32 realwidth}
program realwidth(output);
var r : real;
begin
  r := sqrt(2.0);
  writeln(r:20);
  writeln(r:15);
  writeln(r:12);
  writeln(r:10);
  r := arctan(1.0);
  writeln(r:20);
  writeln(r:15)
end.
{-------------------------------------------------------------- 33 recspan_copy}
program recspan_copy(output);
type
  pt = record x: integer; y: integer end;
  vr = record case boolean of true: (vi: integer); false: (vb: boolean) end;
var
  a: array[1..3] of pt;
  v: array[1..3] of vr;
  i: integer;
begin
  a[1].x := 3; a[1].y := 4;
  a[2] := a[1];
  a[3] := a[2];
  writeln(a[2].x, a[2].y);
  writeln(a[3].x, a[3].y);
  v[1].vi := 42;
  v[2] := v[1];
  writeln(v[2].vi)
end.
{------------------------------------------------------------------- 34 repeat2}
program repeat2(output);
var i, n : integer;
begin
  i := 1; n := 1;
  repeat
    n := n * i;
    i := i + 1
  until i > 5;
  writeln(n);
  i := 10;
  repeat
    write(i);
    i := i - 3
  until i < 1;
  writeln
end.
{-------------------------------------------------------------------- 35 subarr}
program subarr(output);
type range = 1..4;
var a: array[range] of integer;
    i: integer;
begin
  for i := 1 to 4 do a[i] := i * i;
  for i := 1 to 4 do writeln(a[i])
end.
{-------------------------------------------------------------------- 36 varrec}
program varrec(output);
type
  shape = (circle, rect);
  figure = record
    case kind: shape of
      circle: (radius: integer);
      rect:   (width, height: integer)
    end;
var f: figure;
begin
  f.kind := circle;
  f.radius := 5;
  writeln(f.radius);
  f.kind := rect;
  f.width := 10; f.height := 4;
  writeln(f.width);
  writeln(f.height)
end.
{------------------------------------------------------------ 37 vrec_charwrite}
program t;
type dt = (ci, cc);
     r = record case dt of
       ci: (vi: integer);
       cc: (vc: char)
     end;
var s: array[0..4] of r; i: integer;
begin
  s[0].vc := 'H'; s[1].vc := 'e'; s[2].vc := 'l'; s[3].vc := 'l'; s[4].vc := 'o';
  for i := 0 to 4 do write(s[i].vc);
  writeln
end.
{----------------------------------------------------------------- 38 vrecfield}
program vrecfield;
type csp=^cc; cc=record slgth:integer end;
     valu=record case b:boolean of true:(ival:integer); false:(valp:csp) end;
     attr=record cval: valu end;
var g: attr; v: valu; lvp: csp;
begin new(lvp); lvp^.slgth:=99; v.valp:=lvp;
  writeln(v.valp^.slgth);
  g.cval := v;
  writeln(g.cval.valp^.slgth)
end.
{------------------------------------------------------------------- 39 writenl}
program writenl(output);
var i : integer;
begin
  for i := 1 to 5 do
    write(i);
  writeln;
  write('hello');
  write(' ');
  writeln('world')
end.
