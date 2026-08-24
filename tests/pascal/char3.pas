program char3;
var c : char;
procedure printc(x : char);
begin
  writeln(x)
end;
function nextc(x : char) : char;
begin
  nextc := chr(ord(x) + 1)
end;
begin
  c := 'M';
  printc(c);
  printc(nextc(c));
  case c of
    'A','B','C': writeln('early');
    'M': writeln('mid');
    'Z': writeln('late')
  end
end.
