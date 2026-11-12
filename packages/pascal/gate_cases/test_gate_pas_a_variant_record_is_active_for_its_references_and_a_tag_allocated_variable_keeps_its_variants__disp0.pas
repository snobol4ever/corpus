program disp0(output);
type a = record case b: boolean of true: (c: integer); false: (d: char) end;
var e: ^a;
begin
  writeln('before'); new(e, true); dispose(e); writeln('after')
end.
