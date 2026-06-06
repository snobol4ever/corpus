program with3;
type
  rp = ^rec;
  rec = record x : integer; y : integer end;
var
  p : rp;
begin
  new(p);
  p^.x := 10;
  p^.y := 20;
  with p^ do begin
    writeln(x);
    writeln(y);
    x := x + 5
  end;
  writeln(p^.x)
end.
