program eolc;
var ch: char; n: integer;
begin n := 0;
  while not eof(input) do begin read(input, ch); n := n + 1; write(ord(ch):4); if not eof(input) then write(eoln(input):6) end;
  writeln; writeln(n)
end.
