program dispn(output);
type a = record case b: boolean of true: (c: integer); false: (d: char) end;
var e: ^a;
begin
  writeln('before'); new(e); dispose(e, true); writeln('after')
end.
