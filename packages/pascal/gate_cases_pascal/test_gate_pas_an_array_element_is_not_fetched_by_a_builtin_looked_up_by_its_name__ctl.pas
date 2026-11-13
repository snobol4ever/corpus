program ctl(output);
type color = (red, green, blue);
     rec = record a: integer; b: char end;
     grid = array[1..3, 1..4] of integer; vec = array[1..6] of integer;
var i, j, n: integer; a: vec; neg: array[-3..3] of integer; flags: array[0..9] of boolean; hue: array[color] of integer; cs: array['a'..'e'] of integer;
    g: grid; rs: array[1..3] of rec; word: packed array[1..5] of char; en: array[1..3] of color;
procedure fill(var x: vec); var k: integer; begin for k := 1 to 6 do x[k] := k * 7 end;
function total(x: vec): integer; var k, s: integer; begin s := 0; for k := 1 to 6 do s := s + x[k]; x[1] := 0; total := s end;
begin
  for i := 1 to 6 do a[i] := i * i; n := 0; for i := 1 to 6 do n := n + a[i]; writeln(n);
  for i := -3 to 3 do neg[i] := i * 10; for i := -3 to 3 do write(neg[i], ' '); writeln;
  for i := 0 to 9 do flags[i] := odd(i); for i := 0 to 9 do write(flags[i], ' '); writeln;
  hue[red] := 100; hue[green] := 101; hue[blue] := 102; writeln(hue[red], ' ', hue[green], ' ', hue[blue]);
  cs['a'] := 1; cs['e'] := 5; writeln(cs['a'] + cs['e']);
  for i := 1 to 3 do for j := 1 to 4 do g[i, j] := i * 10 + j; writeln(g[2, 3], ' ', g[3, 4], ' ', g[1, 1]);
  for i := 1 to 3 do begin rs[i].a := i; rs[i].b := chr(ord('p') + i) end; writeln(rs[2].a, rs[3].b);
  fill(a); writeln(a[1], ' ', a[6]); writeln(total(a), ' ', a[1]);
  word := 'hello'; word[1] := 'J'; word[5] := 'y'; writeln(word, ' ', word[2]);
  en[1] := blue; en[2] := green; en[3] := red; writeln(ord(en[1]), ord(en[2]), ord(en[3]));
  a[a[1] div 7 + 1] := 99; writeln(a[2], ' ', a[a[2] - 94])
end.
