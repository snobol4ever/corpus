program c2;
var k: integer;
begin
  for k := 1 to 3 do
    case k of
      1: writeln('one ', k);
      2: writeln('two')
      otherwise writeln('many ', k)
    end
end.
