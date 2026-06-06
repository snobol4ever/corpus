program boolptr(output);
type rp = ^rec; rec = record f : boolean end;
var p : rp; i : integer;
begin
  i := 7;
  new(p);
  p^.f := i > 3;
  if p^.f then writeln(1) else writeln(0);
  p^.f := i < 3;
  if p^.f then writeln(1) else writeln(0)
end.
