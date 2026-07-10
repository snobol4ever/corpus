program aa1;
type alpha = packed array [1..8] of char;
var a: array [1..3] of alpha;
begin
  a[1] := 'ab      ';
  a[2] := 'cd      ';
  writeln(a[1]);
  writeln(a[2])
end.
