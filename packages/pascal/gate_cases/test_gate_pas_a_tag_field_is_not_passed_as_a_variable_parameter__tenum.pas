program tenum(output);
type k = (red, green, blue);
var r: record case t: k of red: (i: integer); green: (c: char); blue: (x: boolean) end;
procedure a(var x: k); begin x := green end;
begin a(r.t); writeln(ord(r.t)) end.
