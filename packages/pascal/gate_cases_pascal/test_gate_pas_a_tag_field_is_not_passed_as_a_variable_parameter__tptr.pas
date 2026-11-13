program tptr(output);
type rt = record case b: boolean of true: (i: integer); false: (c: char) end;
var p: ^rt;
procedure a(var x: boolean); begin x := true end;
begin new(p); a(p^.b); writeln(p^.b) end.
