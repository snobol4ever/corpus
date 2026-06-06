program charlit(output);
var c : char;
begin
  writeln('A');
  writeln('Z');
  writeln('a':3);
  writeln('0':5);
  c := 'M';
  if c = 'M' then writeln('Y') else writeln('N');
  writeln(ord('A'));
  writeln(ord('Z') - ord('A'))
end.
