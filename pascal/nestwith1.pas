program nestwith1;
type
  valu = record ival: integer; rval: integer end;
  node = record name: integer; values: valu; nxt: integer end;
  nodeptr = ^node;
var lcp: nodeptr;
begin
  new(lcp);
  lcp^.name := 10;
  with lcp^ do values.ival := 55;
  with lcp^ do values.rval := 77;
  writeln(lcp^.name);
  writeln(lcp^.values.ival);
  writeln(lcp^.values.rval)
end.
