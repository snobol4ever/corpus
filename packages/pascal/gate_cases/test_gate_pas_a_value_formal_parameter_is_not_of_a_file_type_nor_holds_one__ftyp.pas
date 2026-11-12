program ftyp(output);
type r = record f: file of integer end;
var d: r;
procedure b(c: r); begin rewrite(c.f) end;
begin b(d) end.
