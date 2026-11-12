program bd(output);
const n = 10; m = 3;
type r = 0 .. n - 1; t = array [0 .. (n - 1) div 2] of integer; u = array [-m .. m * 2 + 1] of char; w = array [1 .. n mod 4 + 2] of integer;
  e = (red, green, blue); s = red .. blue; c = 'a' .. 'e';
var x: r; a: t; b: u; q: w; y: s; z: c; k: integer;
begin
  x := 9; a[4] := 1; b[-3] := 'q'; b[7] := 'z'; q[4] := 5; y := blue; z := 'd';
  writeln(x, a[4], high(a), ' ', low(u), ' ', high(u), b[-3], b[7], ' ', high(q), q[4], ' ', ord(y), z);
  for k := 1 to 3 do case k * 2 of 2: write('two'); n - 6: write('four'); m * 2: write('six') end; writeln
end.
