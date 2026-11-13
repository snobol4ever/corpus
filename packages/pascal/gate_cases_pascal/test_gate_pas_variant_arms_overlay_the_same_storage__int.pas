program int(output);
type t = record case boolean of true: (whole: integer); false: (small: 0..9); end;
var x: t;
begin
  x.whole := 0; x.small := 5;
  writeln(x.whole);
  x.whole := 7;
  writeln(x.small)
end.
