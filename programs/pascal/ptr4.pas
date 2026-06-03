program ptr4(output);
type
  link = ^node;
  node = record
           val : integer;
           next : link
         end;
var
  head, p : link;
begin
  new(head);
  head^.val := 1;
  new(p);
  p^.val := 2;
  p^.next := nil;
  head^.next := p;
  writeln(head^.val);
  writeln(head^.next^.val)
end.
