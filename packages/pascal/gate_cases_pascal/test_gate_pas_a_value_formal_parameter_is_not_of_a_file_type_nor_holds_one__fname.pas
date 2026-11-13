program fname(output);
type ft = file of integer;
var d: ft;
procedure b(c: ft); begin rewrite(c) end;
begin b(d) end.
