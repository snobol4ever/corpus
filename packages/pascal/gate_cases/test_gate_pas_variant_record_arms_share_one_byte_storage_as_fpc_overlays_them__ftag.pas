program ftag(output);
type rl = record case t: boolean of true: (r: real); false: (i, j: integer) end;
var x: rl; k: integer;
begin
  x.t := true; x.r := 1.0;
  writeln('before');
  x.i := 5;
  writeln('after')
end.
