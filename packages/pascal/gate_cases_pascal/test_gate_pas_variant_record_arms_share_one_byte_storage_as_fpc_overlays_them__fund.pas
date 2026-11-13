program fund(output);
type rl = record case t: boolean of true: (r: real); false: (i, j: integer) end;
var x: rl; k: integer;
begin
  x.t := true; x.r := 1.0; x.t := false;
  writeln('before');
  k := x.j;
  writeln('after')
end.
