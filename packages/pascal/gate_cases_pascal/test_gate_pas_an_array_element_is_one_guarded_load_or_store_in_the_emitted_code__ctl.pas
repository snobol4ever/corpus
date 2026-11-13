program ctl(output);
type color = (red, green, blue);
     rec = record a: integer; b: char end;
var i, j, n: integer; a: array[1..6] of integer; neg: array[-3..3] of integer; flags: array[0..9] of boolean; hue: array[color] of integer; cs: array['a'..'e'] of integer;
    g: array[1..3, 1..4] of integer; rs: array[1..3] of rec; r: array[1..4] of real; sets: array[1..3] of set of 0..9; word: packed array[1..5] of char; chars: array[1..4] of char; big: array[1..200] of integer;
function twice(x: integer): integer; begin twice := x * 2 end;
begin
  for i := 1 to 6 do a[i] := i * i; n := 0; for i := 1 to 6 do n := n + a[i]; writeln(n);
  for i := -3 to 3 do neg[i] := i * 10; for i := -3 to 3 do write(neg[i], ' '); writeln;
  for i := 0 to 9 do flags[i] := odd(i); for i := 0 to 9 do write(flags[i], ' '); writeln;
  hue[red] := 100; hue[green] := 101; hue[blue] := 102; writeln(hue[red] + hue[blue]);
  cs['a'] := 1; cs['e'] := 5; writeln(cs['a'] + cs['e']);
  for i := 1 to 3 do for j := 1 to 4 do g[i, j] := i * 10 + j; writeln(g[2, 3], ' ', g[3, 4], ' ', g[1, 1]);
  for i := 1 to 3 do begin rs[i].a := i; rs[i].b := chr(ord('p') + i) end; writeln(rs[2].a, rs[3].b);
  for i := 1 to 4 do r[i] := i / 4; writeln(r[1]:0:2, ' ', r[4]:0:2);
  for i := 1 to 3 do sets[i] := [i, i + 3]; writeln(5 in sets[2], ' ', 2 in sets[2]);
  word := 'hello'; word[1] := 'J'; word[5] := 'y'; writeln(word, ' ', word[2]);
  for i := 1 to 4 do chars[i] := chr(ord('a') + i); writeln(chars[1], chars[4]);
  for i := 1 to 200 do big[i] := twice(i); n := 0; for i := 1 to 200 do n := n + big[twice(i) div 2]; writeln(n);
  a[a[1] + 1] := 99; writeln(a[2], ' ', a[a[2] - 94])
end.
