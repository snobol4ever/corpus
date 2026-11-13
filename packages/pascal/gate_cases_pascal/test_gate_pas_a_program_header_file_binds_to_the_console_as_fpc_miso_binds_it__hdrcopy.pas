program hdrcopy(src, dst);
var src, dst: text; c: char; n: integer;
begin reset(src); rewrite(dst); n := 0;
  while not eof(src) do begin
    while not eoln(src) do begin read(src, c); write(dst, c); n := n + 1 end;
    readln(src); writeln(dst) end;
  writeln(dst, n, ' characters')
end.
