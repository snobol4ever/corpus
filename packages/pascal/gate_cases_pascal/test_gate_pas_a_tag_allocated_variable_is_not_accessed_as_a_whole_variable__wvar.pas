program wvar(output);
type a = record case b: boolean of true: (c: integer); false: (d: char) end;
var e: ^a;
procedure y(var z: a); begin end;
begin
  writeln('before'); new(e, true); e^.b := true; e^.c := 42; y(e^); writeln('after')
end.
