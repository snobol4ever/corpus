program arity(output);
var t: integer;
procedure enter(x0: integer; x1: integer; x2: integer);
begin t := t + x0 + x1 + x2 end;
procedure block;
  procedure enter(id: integer);
  begin t := t + id end;
begin enter(5); writeln(t) end;
begin t := 0; enter(1, 2, 3); block; writeln(t) end.
