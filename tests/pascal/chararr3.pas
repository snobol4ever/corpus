program chararr3;
type chtp = (letter, number, special, other);
var chartp: array[char] of chtp;
    c: char;
begin
  chartp['a'] := letter;
  chartp['z'] := letter;
  chartp['0'] := number;
  chartp['9'] := number;
  chartp['+'] := special;
  writeln(ord(chartp['a']));
  writeln(ord(chartp['z']));
  writeln(ord(chartp['0']));
  writeln(ord(chartp['9']));
  writeln(ord(chartp['+']))
end.
