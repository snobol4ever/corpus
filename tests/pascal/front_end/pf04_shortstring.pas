{$mode fpc}
program ss;
var s: string[5]; t: string; a: array[1..3] of string[2];
begin
  s := 'abcdefgh'; writeln(s, ' ', length(s));
  t := s + 'xyz'; writeln(t, ' ', length(t));
  a[1] := 'hello'; writeln(a[1], ' ', length(a[1]), ' ', sizeof(s), ' ', sizeof(a));
  s[1] := 'Z'; writeln(s, ' ', ord(s[0]));
end.
