program read4(input, output);
var c : char;
    count : integer;
begin
  count := 0;
  while not eof do
  begin
    while not eoln do
    begin
      read(c);
      count := count + 1
    end;
    readln;
    count := count + 1
  end;
  writeln(count)
end.
