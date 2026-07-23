program disc(output);
type
  pp = ^prec;
  prec = record f: integer; ael, inx: pp end;
var arr, s1, s2: pp;
begin
  new(arr); new(s1); new(s2);
  s1^.f := 111; s2^.f := 222;
  arr^.ael := s1; arr^.inx := s2;
  writeln(arr^.ael^.f);
  writeln(arr^.inx^.f)
end.
