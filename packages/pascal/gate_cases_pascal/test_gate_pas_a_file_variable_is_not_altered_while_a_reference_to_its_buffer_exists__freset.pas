program h3(output);
var a: file of integer; x: integer;
procedure b(var c: integer); begin reset(a) end;
begin rewrite(a); a^ := 1; put(a); reset(a); writeln('before'); b(a^) end.
