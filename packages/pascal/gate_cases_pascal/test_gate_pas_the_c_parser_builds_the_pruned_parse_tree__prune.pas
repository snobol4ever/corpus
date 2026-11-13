program prune(output);
var i: integer; r: real; a: array[1..3] of integer;
procedure p(n: integer; var x: real);
var loc: integer; v: real;
begin loc := n; v := loc / 2; x := v end;
begin i := 1; r := 0.0; a[2] := 7; p(i, r); writeln(r:6:2, a[2]:3) end.
