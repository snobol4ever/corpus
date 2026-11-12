program c1(output);
var c: char; i: integer;
begin
  for i := 1 to 3 do
  begin
    c := chr(ord('a') + i - 1);
    case c of
      'a': writeln('a ', i);
      'b': writeln(upcase(c), ' ', copy('xyz', i, 2))
    else
      writeln('other ', i);
      writeln('second statement')
    end
  end
end.
