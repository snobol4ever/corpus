program tctl1(output);
type valu = record case intval: boolean of true: (ival: integer); false: (valp: ^integer) end;
     r2 = record n: integer; case t: boolean of true: (a: integer); false: (b: integer) end;
var v: valu; q: r2;
begin
  v.intval := false; writeln(v.intval);
  q.n := 1; q.t := true; writeln(q.t); q.t := false; writeln(q.t)
end.
