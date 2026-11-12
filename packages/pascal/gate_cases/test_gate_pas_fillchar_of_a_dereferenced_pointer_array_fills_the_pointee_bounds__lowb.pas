program lowb(output);
type
  pb = ^tb;
  tb = array[5..8] of longint;
var
  p: pb;
  i: longint;
begin
  new(p);
  fillchar(p^, sizeof(tb), 0);
  p^[5] := 3;
  p^[8] := 4;
  fillchar(p^, sizeof(tb), 0);
  for i := 5 to 8 do writeln(p^[i]);
  dispose(p)
end.
