program vrecfield;
type csp=^cc; cc=record slgth:integer end;
     valu=record case b:boolean of true:(ival:integer); false:(valp:csp) end;
     attr=record cval: valu end;
var g: attr; v: valu; lvp: csp;
begin new(lvp); lvp^.slgth:=99; v.valp:=lvp;
  writeln(v.valp^.slgth);
  g.cval := v;
  writeln(g.cval.valp^.slgth)
end.
