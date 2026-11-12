program shadow(output);
var r, i: integer;
procedure p;
var r: real;
begin r := 1.5; i := trunc(r) end;
begin r := 1; p; i := succ(r) + pred(r) + ord(r) end.
