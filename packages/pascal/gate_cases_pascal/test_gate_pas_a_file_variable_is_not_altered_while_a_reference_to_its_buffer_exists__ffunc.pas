program h4(output);
var a: file of integer; x: integer;
function fb(var c: integer): integer; begin rewrite(a); fb := 1 end;
begin rewrite(a); a^ := 1; put(a); reset(a); writeln('before'); x := fb(a^) end.
