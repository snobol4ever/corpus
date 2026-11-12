program isoints(output);
type tRow = array [5..9] of int64;
var n: uint64; k: nativeint; s: sizeint; p: ptrint; r: tRow; c: array ['a'..'f'] of byte; i: integer;
begin
  n := High(Uint64) div 8; k := High(int32) - 1; s := SizeOf(uint16) + SizeOf(r); p := Low(int8);
  for i := Low(r) to High(r) do r[i] := i * 1000000000;
  writeln(n, ' ', k, ' ', s, ' ', p, ' ', Length(r), ' ', Length(c), ' ', r[9] + r[5], ' ', High(uint8) + High(int16))
end.
