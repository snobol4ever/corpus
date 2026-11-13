program vchr(output);
var c: 'a'..'z';
procedure a(var b: char);
begin
  b := 'q'
end;
begin
  a(c); writeln(c)
end.
