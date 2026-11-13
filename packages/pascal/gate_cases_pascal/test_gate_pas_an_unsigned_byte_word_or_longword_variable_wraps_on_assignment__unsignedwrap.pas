program unsignedwrap;
{$mode objfpc}
type tsmall = byte;
var t1: tsmall; b: byte; w: word; l: longword; c: cardinal; u8: uint8; u16: uint16; u32: uint32; i: integer; q: qword;
function Mix(x: longword): longword;
begin
  x := x * 2654435761;
  x := x xor (x shr 15);
  Mix := x + 12345
end;
function Pop32(n: uint32): uint32;
begin
  n := n - ((n shr 1) and $55555555);
  n := (n and $33333333) + ((n shr 2) and $33333333);
  n := (n + (n shr 4)) and $0F0F0F0F;
  n := (n * $01010101) shr 24;
  Pop32 := n
end;
procedure Step(var s: uint32);
begin
  s := s * 1664525 + 1013904223
end;
begin
  b := 250; b := b + 10; w := 65530; w := w + 10; l := 4294967290; l := l + 10; c := 0; c := c - 1;
  u8 := 255; inc(u8); u16 := 0; dec(u16); u32 := 4000000000; u32 := u32 * 2;
  writeln(b, ' ', w, ' ', l, ' ', c, ' ', u8, ' ', u16, ' ', u32);
  writeln(Mix(123456789), ' ', Mix(4294967295));
  u32 := 1; for i := 1 to 5 do Step(u32); writeln(u32);
  l := 3000000000; l := l + l; writeln(l, ' ', l shr 1);
  t1 := 200; t1 := t1 + 100; writeln(t1, ' ', Pop32(4294967295), ' ', Pop32(255 + 256))
end.
