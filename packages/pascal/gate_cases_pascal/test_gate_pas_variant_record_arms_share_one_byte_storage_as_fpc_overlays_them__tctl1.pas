program tctl1(output);
type
  byte = 0..255;
  wh = (crec, vrec, blck);
  rl = record case boolean of true: (r: real); false: (b: packed array [1..8] of byte) end;
  il = record case boolean of true: (i: integer); false: (b: packed array [1..4] of byte) end;
  pr = record case boolean of true: (r: real); false: (lo, hi: integer) end;
  ci = record case boolean of true: (i: integer); false: (c: char) end;
  bb = record case boolean of true: (f: boolean); false: (b: byte) end;
  sb = record case boolean of true: (s: set of 0..31); false: (b: packed array [1..4] of byte) end;
  rc = record fname: integer; case occur: wh of crec: (clev, cdspl: integer); vrec: (vdspl: integer); blck: () end;
var x: rl; y: il; z: pr; w: ci; v: bb; u: sb; d: array[1..3] of rc; k: integer; m: rc;
procedure bump(var n: integer); begin n := n + 1 end;
begin
  x.r := 6.5;
  for k := 1 to 8 do write(x.b[k]:4); writeln;
  for k := 1 to 8 do x.b[k] := 0; x.b[8] := 64; x.b[7] := 25;
  writeln(x.r:8:4);
  y.i := 258; for k := 1 to 4 do write(y.b[k]:4); writeln;
  y.b[1] := 255; y.b[2] := 0; y.b[3] := 0; y.b[4] := 0; writeln(y.i);
  z.r := 1.0; writeln(z.hi, ' ', z.lo);
  z.lo := 0; z.hi := 1073217536; writeln(z.r:8:4);
  w.i := 1; w.c := 'c'; writeln(w.i);
  w.i := 65; writeln(w.c);
  v.b := 1; writeln(v.f); v.f := false; writeln(v.b);
  u.s := [1, 5, 9]; for k := 1 to 4 do write(u.b[k]:4); writeln;
  u.b[1] := 3; u.b[2] := 0; u.b[3] := 0; u.b[4] := 128; writeln(0 in u.s, 1 in u.s, 2 in u.s, 31 in u.s);
  k := 2; d[k].fname := 7; d[k].occur := crec; d[k].clev := 5; d[k].cdspl := 123;
  writeln(d[k].fname, ' ', d[k].clev, ' ', d[k].cdspl);
  d[1].occur := vrec; d[1].vdspl := 99; writeln(d[1].vdspl, ' ', d[1].clev);
  m.occur := crec; m.clev := 3; m.cdspl := 77; writeln(m.clev, ' ', m.cdspl);
  with m do begin clev := 4; cdspl := 88; writeln(clev, ' ', cdspl) end;
  with d[k] do begin occur := vrec; vdspl := 11; writeln(vdspl, ' ', clev) end;
  y.i := 10; bump(y.i); bump(y.i); writeln(y.i, ' ', y.b[1]);
  m.clev := 40; bump(m.clev); writeln(m.clev);
end.
