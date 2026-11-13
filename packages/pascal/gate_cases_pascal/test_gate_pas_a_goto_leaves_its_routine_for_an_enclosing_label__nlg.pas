program nlg(output);
label 9;
var depth, total, hits: integer;
procedure dummy;
begin
  writeln('dummy')
end;
procedure outer(n: integer);
label 5;
var mine: integer;
  procedure inner(k: integer);
  var i: integer;
  begin
    for i := 1 to 10 do
    begin
      total := total + i;
      if (k = 2) and (i = 3) then goto 5;
      if (k = 4) and (i = 2) then goto 9
    end;
    writeln('inner fell through ', k)
  end;
begin
  mine := n * 100;
  depth := depth + 1;
  inner(n);
  writeln('outer after inner ', n);
5:
  writeln('outer at 5, n=', n, ' mine=', mine, ' total=', total);
  if n < 4 then outer(n + 1);
  writeln('outer returns ', n)
end;
function f(x: integer): integer;
begin
  if x > 3 then goto 9;
  f := x * 2
end;
procedure a(lvl: integer; procedure q);
label 1;
var tag: integer;
  procedure c;
  begin
    writeln('c from the activation with tag ', tag);
    goto 1
  end;
begin
  tag := lvl * 11;
  if lvl = 1 then a(2, c) else if lvl = 2 then a(3, q) else q;
  writeln('a not reached ', lvl);
1:
  writeln('a at 1 lvl=', lvl, ' tag=', tag)
end;
procedure p1;
label 7;
var s: integer;
  procedure p2;
    procedure p3(n: integer);
    begin
      hits := hits + 1;
      if n = 0 then goto 7;
      while true do p3(n - 1)
    end;
  begin
    repeat p3(5) until false
  end;
begin
  s := 42;
  p2;
7:
  writeln('p1 at 7 s=', s, ' hits=', hits)
end;
begin
  depth := 0; total := 0; hits := 0;
  a(1, dummy);
  p1; p1;
  writeln('sum ', f(1) + f(2) + f(3));
  outer(1);
  writeln('not reached');
9:
  writeln('main at 9, depth=', depth, ' total=', total);
  if depth < 9 then begin depth := 9; total := 10 + f(5); writeln('not reached either') end;
  writeln('done hits=', hits)
end.
