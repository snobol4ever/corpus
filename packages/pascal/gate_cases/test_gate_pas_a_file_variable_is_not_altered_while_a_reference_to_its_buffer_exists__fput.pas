program h2(output);
var a: file of integer; x: integer;
procedure b(var c: integer); begin put(a) end;
begin rewrite(a); a^ := 1; put(a); reset(a); writeln('before'); b(a^) end.
