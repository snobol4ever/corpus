program moves;
{$mode objfpc}
type tarr = array[1..8] of integer; trow = array[0..2] of word;
var a, b: tarr; d, e: array of int64; s, t: string; i: integer; r1, r2: array[0..4] of trow; q: array[3..6] of byte; u: array[0..3] of byte;
begin
  for i := 1 to 8 do begin a[i] := i * 10; b[i] := 0 end;
  move(a[2], b[1], 3 * sizeof(integer));
  for i := 1 to 8 do write(b[i], ' '); writeln;
  move(a[1], a[3], 4 * sizeof(integer));
  for i := 1 to 8 do write(a[i], ' '); writeln;
  setlength(d, 6); setlength(e, 6);
  for i := 0 to 5 do d[i] := i * i + 1;
  move(d[1], e[0], 4 * sizeof(int64)); move(d[0], d[2], 3 * sizeof(d[0]));
  for i := 0 to 5 do write(e[i], '/', d[i], ' '); writeln;
  s := 'abcdefgh'; t := 'XYZ12345';
  move(t[2], s[3], 4);
  writeln(s);
  setlength(s, 4); fillchar(s[1], 4, '.'); move(t[1], s[2], 2); writeln(s);
  for i := 0 to 4 do begin r1[i][0] := i; r1[i][1] := i + 100; r1[i][2] := i + 200 end;
  move(r1[1], r2[0], 2 * sizeof(trow));
  writeln(r2[0][0], ' ', r2[1][2], ' ', r2[2][0]);
  for i := 3 to 6 do q[i] := i; for i := 0 to 3 do u[i] := 0;
  move(q[4], u[1], 3);
  for i := 0 to 3 do write(u[i], ' '); writeln
end.
