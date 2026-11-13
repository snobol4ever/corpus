program rd(output);
type ft = file of integer;
var f: ft; i: integer;
procedure dump(var x: ft);
begin
  reset(x);
  while not eof(x) do begin writeln(x^); get(x) end
end;
begin
  rewrite(f);
  for i := 1 to 4 do write(f, i * i);
  dump(f);
  writeln('again');
  dump(f)
end.
