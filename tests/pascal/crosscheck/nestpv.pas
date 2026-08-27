{--------------------------------------------------------------------- 1 nestpv}
program nestpv;
type
  cell = record num: integer end;
  cellptr = ^cell;
  attr = record kind: integer; cval: cellptr end;
var gattr : attr;
    lvp : cellptr;
begin
  new(lvp);
  lvp^.num := 77;
  gattr.kind := 3;
  gattr.cval := lvp;
  writeln(gattr.kind);
  writeln(gattr.cval^.num)
end.
{-------------------------------------------------------------------- 2 nestpv2}
program nestpv2;
type
  cell = record num: integer end;
  cellptr = ^cell;
  valu = record ival: integer; valp: cellptr end;
  attr = record kind: integer; cval: valu end;
var gattr : attr;
    lvp : cellptr;
begin
  new(lvp);
  lvp^.num := 88;
  gattr.kind := 3;
  gattr.cval.ival := 42;
  gattr.cval.valp := lvp;
  writeln(gattr.kind);
  writeln(gattr.cval.ival);
  writeln(gattr.cval.valp^.num)
end.
