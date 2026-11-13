program nilfld(output);
type r = record a, b: integer end;
var p: ^r;
begin
  new(p); p^.a := 1; writeln(p^.a); p := nil; p^.b := 2; writeln('after')
end.
