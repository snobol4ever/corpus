program vparr(output);
var a: array[1..3] of integer; i: integer;
  procedure genlabel(var nxtlab: integer); begin nxtlab := 42 end;
begin
  a[1] := 7; a[2] := 8; a[3] := 9;
  i := 2;
  genlabel(a[i]);
  writeln(a[1]); writeln(a[2]); writeln(a[3])
end.
