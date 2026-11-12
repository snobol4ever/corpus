program dispnil(output);
var a: ^integer;
begin
  writeln('before'); a := nil; dispose(a); writeln('after')
end.
