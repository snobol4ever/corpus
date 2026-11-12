program fileroundtrip(output);
var f: file of integer;
    i, x: integer;
begin
   rewrite(f);
   for i := 1 to 5 do write(f, i * 7);
   reset(f);
   while not eof(f) do begin read(f, x); write(x:1, ' ') end;
   writeln;
   writeln('ok')
end.
