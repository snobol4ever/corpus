program parr(output);
type
  pa = ^ta;
  ta = array[0..4] of longint;
var
  p: pa;
  i: longint;
begin
  new(p);
  fillchar(p^, sizeof(ta), 0);
  p^[2] := 9;
  p^[4] := 7;
  fillchar(p^, sizeof(ta), 0);
  for i := 0 to 4 do writeln(p^[i]);
  dispose(p)
end.
