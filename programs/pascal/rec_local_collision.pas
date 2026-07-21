program rec_local_collision;
type rec = record f: integer end;
var g: integer;
procedure inner;
var lattr: rec;
begin lattr.f := 99 end;
procedure outer;
var lattr: rec;
begin lattr.f := 5; inner; writeln(lattr.f) end;
begin
  g := 0;
  outer
end.
