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
