program whole(output);
type arr = array [1..3] of integer;
     mat = array [1..2, 1..2] of integer;
     alpha = packed array [1..4] of char;
     names = array [1..2] of alpha;
var a, b: arr; m, n: mat; x, y: names;
procedure byval(v: arr); begin v[1] := 99; writeln('byval sees ', v[1]:1) end;
procedure byref(var v: arr); begin v[2] := 77 end;
function sum(v: arr): integer; begin v[3] := 0; sum := v[1] + v[2] + v[3] end;
begin
  a[1] := 1; a[2] := 2; a[3] := 3;
  b := a; b[1] := 50; writeln('a1=', a[1]:1, ' b1=', b[1]:1);
  byval(a); writeln('after byval a1=', a[1]:1);
  byref(a); writeln('after byref a2=', a[2]:1);
  writeln('sum=', sum(a):1, ' a3=', a[3]:1);
  m[1, 1] := 1; m[2, 2] := 4; n := m; n[2, 2] := 9; writeln('m22=', m[2, 2]:1, ' n22=', n[2, 2]:1);
  x[1] := 'abcd'; y := x; y[1] := 'wxyz'; writeln('x1=', x[1], ' y1=', y[1])
end.
