program tctl2(output);
type
  byte = 0..255;
  ib = record case boolean of true: (r: real); false: (b: packed array [1..8] of byte) end;
  pib = ^ib;
  outer = record tag: integer; inner: ib; n: integer end;
  pw = record case boolean of true: (r: real); false: (b: packed array [1..8] of char) end;
var a: ib; p: pib; o: outer; c: pw; k: integer;
begin
  a.r := 6.5; for k := 1 to 8 do write(a.b[k]:4); writeln;
  new(p); p^.r := 6.5; for k := 1 to 8 do write(p^.b[k]:4); writeln;
  for k := 1 to 8 do p^.b[k] := 0; p^.b[8] := 64; p^.b[7] := 25; writeln(p^.r:8:4);
  o.tag := 1; o.inner.r := 6.5; o.n := 9; for k := 1 to 8 do write(o.inner.b[k]:4); writeln(' ', o.tag, ' ', o.n);
  o.inner.b[8] := 64; o.inner.b[7] := 0; writeln(o.inner.r:8:4);
  c.r := 1.0; for k := 1 to 8 do write(ord(c.b[k]):4); writeln;
end.
