program fassign(output);
var a: ^integer;
procedure b(var c: integer); begin c := c + 5; dispose(a) end;
begin new(a); a^ := 1; writeln('before'); b(a^); writeln('after') end.
