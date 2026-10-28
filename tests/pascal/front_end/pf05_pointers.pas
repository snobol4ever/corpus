{$mode fpc}
program pa;
type pint = ^longint; tarr = array[0..5] of longint; parr = ^tarr;
var a: tarr; p: pint; q: parr; i: longint; r: record x, y: longint end; pr: ^longint;
begin
  for i := 0 to 5 do a[i] := i * 10;
  p := @a[2]; inc(p); p^ := 77; writeln(a[3]);
  q := @a; q^[4] := 44; writeln(a[4], ' ', q^[1]);
  pr := @r.y; pr^ := 9; writeln(r.y);
  p := @a[0]; for i := 0 to 5 do begin write(p^, ' '); inc(p) end; writeln;
end.
