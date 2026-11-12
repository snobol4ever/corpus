{$mode fpc}
program p;
var a: integer; b: boolean;
begin a := 10; b := true xor false; writeln(a shr 1, ' ', a shl 2, ' ', a xor 3, ' ', b, ' ', (a shr 1) and 1, ' ', 1 shl 30, ' ', a xor a xor 7) end.
