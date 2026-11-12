program buf(output);
type ft = file of integer;
var f: ft; v: integer;
procedure stuff(var x: ft; n: integer);
begin x^ := n; put(x); x^ := n * 2; put(x) end;
begin
  rewrite(f);
  stuff(f, 3);
  stuff(f, 5);
  reset(f);
  while not eof(f) do begin read(f, v); writeln(v) end
end.
