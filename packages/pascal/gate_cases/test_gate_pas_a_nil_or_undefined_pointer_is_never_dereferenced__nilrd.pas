program nilrd(output);
var p: ^integer; b: integer;
begin
  writeln('before'); p := nil; b := p^; writeln('after ', b)
end.
