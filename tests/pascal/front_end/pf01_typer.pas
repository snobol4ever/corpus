{$mode fpc}
program ty;
type
  tcs = 'a'..'z';
  tboolrec = record ok: boolean; name: string[20]; end;
  tgrid = array[1..2, 1..3] of char;
  trow = array[1..3] of char; tg2 = array[1..2] of trow;
var
  a: array[1..3] of integer; cs: set of tcs; c: tcs; r: tboolrec; g: tgrid; g2: tg2; i, j: integer; x: integer;
procedure p(a: array of integer); var k: integer; begin for k := low(a) to high(a) do write(a[k], ' '); writeln(length(a)); end;
procedure q(x: char); begin write(x); writeln(ord(x)); end;
procedure s; var cs: set of char; begin cs := ['x']; if 'x' in cs then writeln('inner') ; end;
begin
  a[1] := 10; a[2] := 20; a[3] := 30; p(a);
  cs := ['b', 'd']; c := 'd'; if c in cs then writeln('d in') else writeln('d out'); s; if 'x' in cs then writeln('leak') else writeln('no leak');
  r.ok := true; r.name := 'abcdefghijk'; if r.ok then writeln(r.name, ' ', length(r.name));
  for i := 1 to 2 do for j := 1 to 3 do g[i, j] := chr(ord('a') + 3 * (i - 1) + j - 1); for i := 1 to 2 do begin for j := 1 to 3 do write(g[i, j]); writeln end;
  g2[1] := 'xyz'; g2[2][2] := 'Q'; writeln(g2[1], g2[2][2]);
  x := 66; q(char(x)); q(chr(x + 1));
end.
