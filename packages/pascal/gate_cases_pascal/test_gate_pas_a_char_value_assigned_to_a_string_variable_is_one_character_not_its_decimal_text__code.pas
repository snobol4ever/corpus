{$mode objfpc}{$H+}
program code(output);
var s: ansistring; t: string;
begin
  s := chr(2); writeln(ord(s[1]), ' ', length(s));
  s := chr(65); writeln(ord(s[1]), ' ', length(s), ' ', s);
  s := chr(200); writeln(ord(s[1]), ' ', length(s));
  t := chr(9); writeln(ord(t[1]), ' ', length(t));
  t := chr(122); writeln(t, ' ', ord(t[1]))
end.
