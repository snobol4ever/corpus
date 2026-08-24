program char1;
var c : char;
    i : integer;
begin
  c := 'A';
  writeln(c);
  writeln(c:3);
  c := chr(66);
  writeln(c);
  i := ord(c);
  writeln(i)
end.
