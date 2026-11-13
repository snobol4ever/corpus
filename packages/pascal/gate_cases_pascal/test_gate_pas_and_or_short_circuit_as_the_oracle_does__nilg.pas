program nilg(output);
type p = ^r; r = record v: integer; next: p end;
var x: r;
begin
  x.v := 6; x.next := nil;
  if (x.v = 10) or ((x.v = 5) and (x.next^.v = 5)) then writeln('OK');
  writeln((x.next <> nil) and (x.next^.v = 1))
end.
