program g;
var t: integer;
procedure five(p1, p2, p3, p4, p5: integer);
begin writeln(p1, p5) end;
procedure eight(a, b, c, d, e, f, g, h: integer);
begin writeln(a, b, c); writeln(d, e, f); writeln(g, h) end;
function six(a, b, c, d, e, f: integer): integer;
begin six := a + b + c + d + e + f end;
procedure outer(a, b, c, d, e: integer);
begin five(e, d, c, b, a); eight(a, b, c, d, e, a + 10, b + 10, c + 10) end;
begin
  five(1, 2, 3, 4, 5);
  eight(1, 2, 3, 4, 5, 6, 7, 8);
  t := six(1, 2, 3, 4, 5, 6); writeln(t);
  outer(11, 12, 13, 14, 15)
end.
