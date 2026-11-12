program walk(input, output);
var c: char; n: integer;
begin
  n := 0;
  while not eof(input) do
    begin
      write('[', ord(input^):1, ']');
      if eoln(input) then begin readln; writeln(' eol') end else read(c);
      n := n + 1
    end;
  writeln(n:1)
end.
