program enum(output);
type e1 = (a0, a1, a2, a3, a4);
     r1 = 0..4;
     t1 = packed record case integer of 1: (f1: e1); 2: (f2: r1); end;
     t2 = record case integer of 1: (g1: e1); 2: (g2: r1); end;
var v: t1; w: t2;
begin
  v.f1 := a0; v.f2 := 4;
  if v.f1 = a4 then writeln('packed ok') else writeln('packed failed');
  w.g1 := a0; w.g2 := 2;
  if w.g1 = a2 then writeln('unpacked ok') else writeln('unpacked failed');
  w.g1 := a3;
  writeln(w.g2);
  if w.g2 = 3 then writeln('back ok')
end.
