program wfac(output);
type a = record case b: boolean of true: (c: integer); false: (d: char) end;
var e: ^a; x: a;
begin
  writeln('before'); new(e, true); e^.b := true; e^.c := 42; x := e^; writeln('after')
end.
