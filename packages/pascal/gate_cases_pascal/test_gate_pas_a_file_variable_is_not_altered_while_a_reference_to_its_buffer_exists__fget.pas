program fget(output);
var a: file of integer;
procedure b(var c: integer); begin get(a) end;
begin rewrite(a); a^ := 1; put(a); reset(a); writeln('before'); b(a^) end.
