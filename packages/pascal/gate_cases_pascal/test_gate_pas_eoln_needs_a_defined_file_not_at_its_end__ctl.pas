program ctl(input, output);
var f: text; c: char; n, k: integer;
begin
  rewrite(f); writeln(f, 'one'); writeln(f); writeln(f, 'two three'); reset(f);
  n := 0;
  while not eof(f) do begin k := 0; while not eoln(f) do begin read(f, c); k := k + 1 end; readln(f); n := n + 1; writeln('file line ', n, ' has ', k) end;
  n := 0;
  while not eof do begin k := 0; while not eoln do begin read(c); k := k + 1 end; readln; n := n + 1; writeln('input line ', n, ' has ', k) end
end.
