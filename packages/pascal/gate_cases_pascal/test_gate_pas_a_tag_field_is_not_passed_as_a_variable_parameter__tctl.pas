program tctl(output);
type k = (red, green, blue);
var r: record n: integer; case t: k of red: (i: integer); green: (c: char); blue: (x: boolean) end;
    q: record case b: boolean of true: (j: integer); false: (d: char) end;
procedure inc1(var x: integer); begin x := x + 1 end;
procedure pv(x: k); begin writeln(ord(x)) end;
function fv(x: boolean): integer; begin if x then fv := 1 else fv := 0 end;
begin
  r.n := 5; inc1(r.n); writeln(r.n);
  r.t := red; r.i := 40; inc1(r.i); writeln(r.i);
  pv(r.t); q.b := true; q.j := 3; writeln(fv(q.b)); inc1(q.j); writeln(q.j)
end.
