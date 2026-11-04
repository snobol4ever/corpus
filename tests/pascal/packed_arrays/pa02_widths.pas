{$mode fpc}
program pa02_widths;
type
  tcolor = (red, green, blue, violet);
  tsub = 10..20;
var
  ab : array [0..9] of byte;
  ash : array [0..9] of shortint;
  ac : array [0..9] of char;
  abo : array [0..9] of boolean;
  aw : array [0..9] of word;
  asm_ : array [0..9] of smallint;
  alw : array [0..9] of longword;
  ali : array [0..9] of longint;
  ai64 : array [0..9] of int64;
  aq : array [0..9] of qword;
  ae : array [0..3] of tcolor;
  asub : array [1..5] of tsub;
  a2 : array [1..3, 1..4] of word;
  aa : array [1..3] of array [1..2] of byte;
  i, j : longint;
  s : int64;
begin
  for i := 0 to 9 do begin
    ab[i] := i * 25; ash[i] := -i * 12; ac[i] := chr(ord('a') + i); abo[i] := odd(i);
    aw[i] := i * 6553; asm_[i] := -i * 3276; alw[i] := i * 429496729; ali[i] := -i * 214748364;
    ai64[i] := -i * 900000000000000000; aq[i] := i * 1000000000000000000
  end;
  for i := 0 to 9 do writeln(ab[i], ' ', ash[i], ' ', ac[i], ' ', abo[i], ' ', aw[i], ' ', asm_[i], ' ', alw[i], ' ', ali[i], ' ', ai64[i], ' ', aq[i]);
  for i := 0 to 3 do ae[i] := tcolor(3 - i);
  for i := 0 to 3 do write(ord(ae[i]), ' '); writeln;
  for i := 1 to 5 do asub[i] := 9 + 2 * i;
  for i := 1 to 5 do write(asub[i], ' '); writeln;
  for i := 1 to 3 do for j := 1 to 4 do a2[i, j] := i * 100 + j;
  s := 0; for i := 1 to 3 do for j := 1 to 4 do s := s + a2[i][j]; writeln(s);
  for i := 1 to 3 do begin aa[i][1] := i; aa[i][2] := 2 * i end;
  for i := 1 to 3 do write(aa[i][1] + aa[i][2], ' '); writeln;
  writeln(low(ab), ' ', high(ab), ' ', sizeof(ab), ' ', sizeof(aw), ' ', sizeof(ali), ' ', sizeof(ai64), ' ', high(asub), ' ', low(asub))
end.
