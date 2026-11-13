{$mode objfpc}{$H+}
program plain(output);
var c, d: char; n: longint;
begin
  c := chr(7); d := c; writeln(ord(c), ' ', ord(d));
  n := ord('a'); c := chr(n); writeln(c, ' ', ord(c))
end.
