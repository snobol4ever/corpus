(* PB-38: test new() and pointer dereference - used heavily in pcom init *)
program pb38(output);
type
  nodeptr = ^node;
  node = record
    val: integer;
    next: nodeptr
  end;
var
  p: nodeptr;
  q: nodeptr;
begin
  new(p);
  p^.val := 42;
  p^.next := nil;
  new(q);
  q^.val := 99;
  q^.next := p;
  writeln(q^.val);
  writeln(q^.next^.val)
end.
