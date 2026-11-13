program ctl(output);
type r = record i: integer end;
var rp, sp: ^r; v: r;
begin
  new(rp); new(sp); sp^.i := 7;
  with rp^ do i := 42;
  writeln(rp^.i);
  with v do begin i := 5; writeln(i) end;
  with sp^ do begin i := i + 1; dispose(rp); writeln(i) end;
  new(rp); with rp^ do i := 9; writeln(rp^.i); dispose(rp); dispose(sp)
end.
