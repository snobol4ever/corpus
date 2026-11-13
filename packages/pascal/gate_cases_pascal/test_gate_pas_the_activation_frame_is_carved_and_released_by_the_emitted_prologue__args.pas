{$mode objfpc}
program args(output);
var k: longint;
function f8(a, b, c, d, e, f, g, h: longint; x: double; var y: longint): double;
begin y := y + a + b + c + d + e + f + g + h; f8 := x * (a + h) end;
procedure noargs; begin writeln('noargs') end;
procedure leave(n: longint);
begin
  if n = 3 then exit;
  writeln('leave ', n);
  leave(n + 1);
  writeln('back ', n)
end;
function ex(n: longint): longint;
begin
  ex := -1;
  if n > 5 then exit;
  ex := n * 10
end;
begin
  k := 0;
  writeln(f8(1,2,3,4,5,6,7,8, 1.5, k):0:2, ' ', k);
  noargs; noargs;
  writeln(ex(3), ' ', ex(9));
  leave(0);
  writeln('done')
end.
