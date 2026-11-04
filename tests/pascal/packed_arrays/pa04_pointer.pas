{$mode fpc}
program pa04_pointer;
type
  tarr = array [0..7] of longint;
  pint = ^longint;
  parr = ^tarr;
var
  a : tarr;
  bb : array [0..5] of byte;
  p : pint;
  q : parr;
  pb : ^byte;
  i : longint;
begin
  for i := 0 to 7 do a[i] := i * 11;
  p := @a[2]; inc(p); p^ := 77; writeln(a[3]);
  q := @a; q^[5] := 55; writeln(a[5], ' ', q^[1]);
  p := @a[0]; for i := 0 to 7 do begin write(p^, ' '); inc(p) end; writeln;
  for i := 0 to 5 do bb[i] := 250 + i;
  pb := @bb[1]; pb^ := 9; inc(pb, 2); writeln(bb[1], ' ', pb^);
  pb := @bb[0]; for i := 0 to 5 do begin write(pb^, ' '); inc(pb) end; writeln
end.
