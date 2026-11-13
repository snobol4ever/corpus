program ctl(output);
type a = record case b: boolean of true: (c: integer); false: (d: integer) end;
var v: a; w: a; e, f: ^a;
begin
  v.b := true; v.c := 7; writeln(v.c);
  v.b := false; v.d := 31; writeln(v.d);
  w.c := 11; writeln(w.c);
  new(e, true); e^.c := 5; e^.b := true; writeln(e^.c); dispose(e, true);
  new(f); f^.b := false; f^.d := 32; f^.b := true; f^.c := 9; writeln(f^.c); dispose(f)
end.
