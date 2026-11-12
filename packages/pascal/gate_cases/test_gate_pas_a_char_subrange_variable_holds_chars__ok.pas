program charsub(output);
const hi = 'e';
type letter = 'a'..'e'; upto = 'a'..hi; small = 1..5;
var c: 'a'..'e'; d: letter; u: upto; e: char; y: array ['a'..'c'] of small; n: small;
begin
  c := 'c'; d := 'b'; u := 'd'; e := 'z'; y['b'] := 4; n := 3;
  writeln(c, d, u, e, ' ', ord(c):1, ' ', succ(d), ' ', c < d, ' ', c = 'c', ' ', y['b']:1, ' ', n:1);
  for c := 'a' to 'e' do write(c); writeln
end.
