program frec(output);
type r = record f: text end;
var d: r;
procedure b(c: r); begin rewrite(c.f) end;
begin b(d) end.
