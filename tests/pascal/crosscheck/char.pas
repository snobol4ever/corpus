{---------------------------------------------------------------------- 1 char1}
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
{---------------------------------------------------------------------- 2 char2}
program char2;
var c : char;
    a, b : char;
begin
  a := 'a';
  b := 'z';
  if a < b then writeln('less');
  if a = 'a' then writeln('equal');
  if b > 'y' then writeln('greater');
  for c := 'A' to 'E' do
    writeln(c)
end.
