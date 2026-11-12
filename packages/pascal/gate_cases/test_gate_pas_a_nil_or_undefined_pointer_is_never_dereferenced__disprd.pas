program disprd(output);
var p: ^integer; b: integer;
begin
  new(p); p^ := 5; writeln(p^); dispose(p); b := p^; writeln('after ', b)
end.
