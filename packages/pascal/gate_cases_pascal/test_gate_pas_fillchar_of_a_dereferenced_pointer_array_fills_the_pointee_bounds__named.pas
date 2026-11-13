program named(output);
var
  a: array[1..5] of longint;
  i: longint;
begin
  for i := 1 to 5 do a[i] := i;
  fillchar(a, sizeof(a), 0);
  for i := 1 to 5 do writeln(a[i]);
end.
