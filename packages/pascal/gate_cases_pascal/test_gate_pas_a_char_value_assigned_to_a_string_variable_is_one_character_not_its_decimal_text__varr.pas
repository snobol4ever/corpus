{$mode objfpc}{$H+}
program varr(output);
var s: ansistring; c: char; n: longint;
begin
  c := 'q'; s := c; writeln(s, ' ', length(s), ' ', ord(s[1]));
  n := 66; s := chr(n); writeln(s, ' ', ord(s[1]));
  s := chr(n + 1); writeln(s)
end.
