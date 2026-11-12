program s1;
var s: string[20]; t: string; i: integer;
begin
  s := 'abc'; s := s + 'de'; t := concat(s, 'fg', 'h'); i := 42;
  writeln(i, ' ', length(s), ' ', s, ' ', t, ' ', ord(s[0]), ' ', upcase(s[1]), upcase('q'), ' ', upcase(t));
  writeln(pos('de', t), ' ', copy(t, 2, 3), '|', copy(t, 7, 10), '|', length(copy(t, 3, 0)), '|', copy(t, 6))
end.
