program ffunc(output);
var a: ^integer; x: integer;
function fb(var c: integer): integer; begin dispose(a); fb := 1 end;
begin new(a); a^ := 2; writeln('before'); x := fb(a^) end.
