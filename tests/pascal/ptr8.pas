program ptr8(output);
type link = ^node; node = record val : integer; next : link end;
var head : link;

procedure printlist(p : link);
begin
  while p <> nil do
  begin
    writeln(p^.val);
    p := p^.next
  end
end;

procedure setval(p : link; v : integer);
begin
  p^.val := v
end;

begin
  new(head);
  head^.val := 1;
  new(head^.next);
  head^.next^.val := 2;
  head^.next^.next := nil;
  setval(head, 77);
  printlist(head)
end.
