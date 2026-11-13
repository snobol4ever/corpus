program ok(input, output);
var b: 1..5; c: 'a'..'z'; i: integer;
begin
  for i := 1 to 5 do begin b := i; write(b:2) end; writeln;
  read(b); writeln(b); c := 'q'; writeln(c)
end.
