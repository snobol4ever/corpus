program ctl(output);
type a = record case b: boolean of true: (c: integer); false: (d: integer) end;
var v: a; f, e: ^a;
procedure show(var z: a); begin writeln(ord(z.b)) end;
procedure copy(z: a); begin writeln(ord(z.b)) end;
begin
  new(f); f^.b := true; f^.c := 4; v := f^; writeln(v.c); f^ := v; show(f^); copy(f^);
  new(e, true); e^.b := true; e^.c := 5; writeln(e^.c); writeln(ord(e^.b));
  dispose(e, true); dispose(f)
end.
