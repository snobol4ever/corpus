{------------------------------------------------------------------- 1 chararr1}
program chararr1;
var s: packed array [1..8] of char;
    i: integer;
begin
  s[1] := 'h'; s[2] := 'e'; s[3] := 'l'; s[4] := 'l';
  s[5] := 'o'; s[6] := ' '; s[7] := ' '; s[8] := ' ';
  for i := 1 to 8 do write(s[i]);
  writeln
end.
{------------------------------------------------------------------- 2 chararr2}
program chararr2;
type alpha = packed array [1..8] of char;
var id: alpha;
    i: integer;
begin
  id[1] := 'p'; id[2] := 'a'; id[3] := 's'; id[4] := 'c';
  id[5] := 'a'; id[6] := 'l'; id[7] := ' '; id[8] := ' ';
  for i := 1 to 8 do write(id[i]);
  writeln
end.
{------------------------------------------------------------------- 3 chararr3}
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
