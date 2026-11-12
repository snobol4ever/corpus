program tctl(output);
var a, b2: file of integer;
procedure show(var c: integer); begin writeln(c) end;
procedure other(var c: integer); begin get(b2) end;
procedure byval(c: integer); begin get(a); writeln(c) end;
function fn(var c: integer): integer; begin fn := c * 2 end;
begin
  rewrite(a); a^ := 1; put(a); a^ := 2; put(a); reset(a);
  rewrite(b2); b2^ := 7; put(b2); b2^ := 8; put(b2); reset(b2);
  show(a^); writeln(a^);
  other(a^); writeln(a^, ' ', b2^);
  byval(a^);
  writeln(fn(a^));
  writeln(a^)
end.
