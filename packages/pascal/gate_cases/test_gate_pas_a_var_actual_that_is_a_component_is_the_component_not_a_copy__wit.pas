program varfield(output);
type r = record a: integer; b: integer end;
var x: r; y: array[1..2] of integer;
procedure f(var v: integer); begin x.a := 7; v := v + 1 end;
procedure g(var v: integer); begin y[1] := 70; v := v + 1 end;
begin x.a := 1; f(x.a); writeln(x.a); y[1] := 10; g(y[1]); writeln(y[1]) end.
