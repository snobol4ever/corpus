program aggloc2(output);
type rec = record typtr: integer; kind: integer end;
var gattr: rec; depth: integer;
  procedure selector;
    var lattr: rec;
  begin
    lattr := gattr;
    if depth < 2 then
      begin depth := depth + 1; gattr.typtr := 100 + depth; selector end;
    writeln(lattr.typtr)
  end;
begin
  gattr.typtr := 4; gattr.kind := 1; depth := 0;
  selector
end.
