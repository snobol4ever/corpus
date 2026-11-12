program tctl2(output);
type rp = ^integer;
     r = record a: rp; case t: boolean of true: (b: rp); false: (c: integer) end;
var x: r; y: ^r;
begin
  new(x.a); x.a^ := 1; x.t := true; new(x.b); x.b^ := 2; writeln(x.a^, ' ', x.b^);
  new(y); new(y^.a); y^.a^ := 3; y^.t := true; new(y^.b); y^.b^ := 4; writeln(y^.a^, ' ', y^.b^);
  x.t := false; x.c := 5; writeln(x.c); writeln(x.t, ' ', y^.t)
end.
