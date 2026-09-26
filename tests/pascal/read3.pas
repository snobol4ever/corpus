program read3(input, output);
var i : integer;
    sum : integer;
begin
  sum := 0;
  while not eof do
  begin
    while not eoln do
    begin
      read(i);
      sum := sum + i
    end;
    readln
  end;
  writeln(sum)
end.
