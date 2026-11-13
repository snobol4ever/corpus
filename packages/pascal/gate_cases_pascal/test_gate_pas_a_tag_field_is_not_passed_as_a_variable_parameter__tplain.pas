program tplain(output);
var r: record case b: boolean of true: (i: integer); false: (c: char) end;
procedure a(var x: boolean); begin x := true end;
begin a(r.b); writeln(r.b) end.
