program compat(output);
const big = 2.5; ch = 'k'; yes = true;
type color = (red, green, blue); letters = packed array [1..5] of char;
var i, n: integer; r: real; c: char; b: boolean; k: color; s: letters;
begin
  i := 7; r := 3; r := big; r := i; c := 'x'; c := ch; c := chr(i + 60); b := true; b := yes; k := blue; s := 'hello';
  writeln(i:1, ' ', r:5:2, ' ', c, ' ', b, ' ', ord(k):1, ' ', s);
  n := 0; for c := 'a' to 'e' do n := n + 1;
  for b := false to true do n := n + 10;
  for k := red to blue do n := n + 100;
  for i := 3 downto 1 do n := n + 1000;
  writeln(n:1)
end.
