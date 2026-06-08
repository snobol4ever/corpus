program arr2dtype3;
type vec = array[0..3] of integer;
var v: vec; i: integer;
procedure fill(var a: vec);
begin
  a[0] := 10; a[1] := 20; a[2] := 30; a[3] := 40
end;
function get2(a: vec): integer;
begin
  get2 := a[2]
end;
begin
  fill(v);
  writeln(get2(v))
end.
