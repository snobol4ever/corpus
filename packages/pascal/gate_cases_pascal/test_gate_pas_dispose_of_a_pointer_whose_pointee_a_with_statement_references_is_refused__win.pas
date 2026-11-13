program win(output);
type r = record i: integer end;
var rp: ^r;
begin
  writeln('before'); new(rp);
  with rp^ do begin rp^.i := 42; dispose(rp) end;
  writeln('after')
end.
