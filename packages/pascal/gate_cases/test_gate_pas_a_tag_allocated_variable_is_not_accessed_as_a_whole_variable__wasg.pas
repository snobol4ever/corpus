program wasg(output);
type a = record case b: boolean of true: (c: integer); false: (d: char) end;
var e: ^a; x: a;
begin
  writeln('before'); new(e, true); x.b := true; x.c := 42; e^ := x; writeln('after')
end.
