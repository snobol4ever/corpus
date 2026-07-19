program t;
var glob : integer;
procedure setit(var nxt: integer);
begin glob := glob + 1; nxt := glob end;
procedure body;
  var seg : integer;
begin
  setit(seg);
  writeln('seg=', seg:1, ' glob=', glob:1)
end;
begin glob := 0; body end.
