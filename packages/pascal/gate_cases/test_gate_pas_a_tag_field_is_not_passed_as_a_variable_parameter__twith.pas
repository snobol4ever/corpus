program twith(output);
var r: record case b: boolean of true: (i: integer); false: (c: char) end;
procedure a(var x: boolean); begin x := true end;
begin with r do a(b); writeln(r.b) end.
