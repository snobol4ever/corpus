program tctl2(output);
type e = (ea, eb);
     sp = ^st;
     st = record case f: e of ea: (nx: sp); eb: (v: integer) end;
     attr = record t: sp; k: integer end;
var g: attr; q, r: sp;
begin
  new(q, ea); new(r, eb); q^.f := ea; r^.f := eb; q^.nx := r; r^.v := 42; g.t := q; g.k := 3;
  with g, g.t^ do begin t := nx; if nx = r then writeln('same') else writeln('different'); k := 4 end;
  writeln(g.k);
  if g.t = r then writeln('moved') else writeln('stayed')
end.
