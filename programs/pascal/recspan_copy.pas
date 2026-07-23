program recspan_copy(output);
type
  pt = record x: integer; y: integer end;
  vr = record case boolean of true: (vi: integer); false: (vb: boolean) end;
var
  a: array[1..3] of pt;
  v: array[1..3] of vr;
  i: integer;
begin
  a[1].x := 3; a[1].y := 4;
  a[2] := a[1];
  a[3] := a[2];
  writeln(a[2].x, a[2].y);
  writeln(a[3].x, a[3].y);
  v[1].vi := 42;
  v[2] := v[1];
  writeln(v[2].vi)
end.
