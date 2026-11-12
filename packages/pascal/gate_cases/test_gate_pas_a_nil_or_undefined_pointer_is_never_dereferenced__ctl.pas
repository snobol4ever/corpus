program ctl(output);
type link = ^node; node = record v: integer; next: link end;
var head, p, q: link; i, s: integer;
begin
  head := nil;
  for i := 1 to 5 do begin new(p); p^.v := i * i; p^.next := head; head := p end;
  s := 0; p := head;
  while p <> nil do begin s := s + p^.v; write(p^.v:4); p := p^.next end;
  writeln(' sum ', s);
  p := head;
  while p <> nil do begin q := p^.next; dispose(p); p := q end;
  if p = nil then writeln('all disposed')
end.
