program arr2dtype;
type mat = array[0..1, 0..1] of integer;
var m: mat; x: integer;
procedure setmat(var a: mat);
begin
  a[0,0] := 1; a[0,1] := 2; a[1,0] := 3; a[1,1] := 4
end;
function summat(a: mat): integer;
var i, j, s: integer;
begin
  s := 0;
  for i := 0 to 1 do
    for j := 0 to 1 do
      s := s + a[i,j];
  summat := s
end;
begin
  setmat(m);
  x := summat(m);
  writeln(x)
end.
