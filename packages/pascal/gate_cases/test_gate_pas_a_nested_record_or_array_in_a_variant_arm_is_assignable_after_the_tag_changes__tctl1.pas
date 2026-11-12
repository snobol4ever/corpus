program tctl1(output);
type valu = record case intval: boolean of true: (ival: integer); false: (valp: ^integer) end;
     ak = (cst, varbl, expr);
     attr = record typtr: ^integer; case kind: ak of cst: (cval: valu); varbl: (packing: boolean; n: integer); expr: () end;
     arrv = record case t: boolean of true: (a: array [1..4] of integer); false: (b: integer) end;
     deep = record case d: boolean of true: (inner: attr); false: (z: integer) end;
var g: attr; v: arrv; w: deep; i: integer; q: ^integer;
begin
  new(q); q^ := 9;
  g.kind := cst; g.cval.intval := false; g.cval.valp := q;
  g.kind := varbl; g.packing := true; g.n := 3; writeln(g.n);
  g.kind := cst; g.cval.intval := true; g.cval.ival := 5; writeln(g.cval.ival);
  g.cval.intval := false; g.cval.valp := q; writeln(g.cval.valp^);
  v.t := false; v.b := 1; v.t := true; for i := 1 to 4 do v.a[i] := i * i; writeln(v.a[3], ' ', v.a[4]);
  v.t := false; v.b := 7; writeln(v.b); v.t := true; v.a[2] := 11; writeln(v.a[2]);
  w.d := false; w.z := 1; w.d := true; w.inner.kind := cst; w.inner.cval.intval := true; w.inner.cval.ival := 8; writeln(w.inner.cval.ival);
  w.d := false; w.z := 2; w.d := true; w.inner.kind := varbl; w.inner.n := 4; writeln(w.inner.n)
end.
