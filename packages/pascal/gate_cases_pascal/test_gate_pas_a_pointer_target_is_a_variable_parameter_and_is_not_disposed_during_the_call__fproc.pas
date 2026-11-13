program fproc(output);
var a: ^integer;
procedure b(var c: integer); begin c := 1; dispose(a) end;
begin new(a); writeln('before'); b(a^) end.
