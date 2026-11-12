program realrec;
type valu = record case boolean of true: (ival: integer); false: (rval: real) end;
var q: record r: real; n: integer end; v: valu; s: real;
procedure p;
var r: record case boolean of true: (r: real); false: (b: packed array [1..8] of 0..255) end;
begin r.r := 1.5; writeln(r.r:6:2) end;
begin
  q.r := 2.5; q.n := 3; s := q.r * 2;
  writeln(s:6:2); writeln(q.r:6:2, q.n);
  v.rval := 0.25; writeln(v.rval:8:3); v.ival := 7; writeln(v.ival);
  p
end.
