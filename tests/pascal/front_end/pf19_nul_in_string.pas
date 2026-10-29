program pf19_nul_in_string;
{$mode objfpc}{$h+}
var s, t: string; i: integer;
begin
  setlength(s, 4);
  writeln(length(s));
  for i := 1 to 4 do s[i] := chr(0);
  writeln(length(s), ' ', ord(s[1]), ' ', ord(s[4]));
  s[2] := 'B';
  writeln(length(s), ' ', ord(s[1]), ' ', ord(s[2]), ' ', ord(s[3]));
  t := s + 'x';
  writeln(length(t), ' ', ord(t[1]), ' ', ord(t[5]));
  t := copy(s, 2, 3);
  writeln(length(t), ' ', ord(t[1]), ' ', ord(t[2]));
  s := 'ab' + #0 + 'cd';
  writeln(length(s), ' ', ord(s[3]), ' ', s[4]);
  writeln(pos('c', s), ' ', length(s) = 5, ' ', s = 'ab' + #0 + 'cd');
  fillchar(s[1], 5, #0);
  writeln(length(s), ' ', ord(s[5]));
  fillchar(s[1], 5, 'z');
  writeln(s);
  s := 'p' + #0 + 'q';
  writeln(length(s), ' ', ord(s[2]), ' ', pos('q', s));
  delete(s, 2, 1);
  writeln(s, ' ', length(s));
  insert(#0, s, 2);
  writeln(length(s), ' ', ord(s[2]), ' ', s[3]);
end.
