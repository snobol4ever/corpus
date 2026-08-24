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
