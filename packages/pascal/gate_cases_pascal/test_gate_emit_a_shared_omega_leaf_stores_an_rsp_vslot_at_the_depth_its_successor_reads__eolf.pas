program eolf;
var ch: char;
begin
  while not eof(input) do begin read(input, ch); if not eof(input) then writeln(ord(ch):4, eoln(input):6) end
end.
