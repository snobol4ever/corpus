program arr2d3;
var m: array[0..1, 0..1] of integer;
begin
  m[0,0] := 1; m[0,1] := 0;
  m[1,0] := 0; m[1,1] := 1;
  writeln(m[0,0]); writeln(m[0,1]);
  writeln(m[1,0]); writeln(m[1,1])
end.
