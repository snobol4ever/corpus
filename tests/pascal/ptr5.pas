program ptr5(output);
type link = ^node; node = record val : integer; next : link end;
var head, t, p : link; i : integer;
begin
  head := nil;
  for i := 1 to 3 do
  begin
    new(t);
    t^.val := i * 10;
    t^.next := head;
    head := t
  end;
  p := head;
  while p <> nil do
  begin
    writeln(p^.val);
    p := p^.next
  end
end.
