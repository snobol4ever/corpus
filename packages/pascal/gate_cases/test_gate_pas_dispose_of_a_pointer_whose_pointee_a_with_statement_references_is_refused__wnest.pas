program wnest(output);
type r = record i: integer end;
var rp, sp: ^r; v: r;
begin
  writeln('before'); new(rp); new(sp);
  with rp^ do with v do begin i := 1; dispose(rp) end;
  writeln('after')
end.
