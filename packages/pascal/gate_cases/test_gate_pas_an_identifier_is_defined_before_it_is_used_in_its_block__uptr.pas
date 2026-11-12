program uptr(output);
type t = integer;
procedure p;
type pp = ^t; t = record a: integer end;
var v: pp;
begin
  new(v); v^.a := 7; writeln(v^.a)
end;
begin
  p
end.
