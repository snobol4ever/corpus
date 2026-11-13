program objbound;
{$mode objfpc}
type
  colour = (red, green, blue, cyan);
  tByteHalf = 0..High(byte) div 2;
  tFromEnum = Ord(green)..Ord(High(colour)) * 3;
  tPairs = Pred(4)..Succ(9) + Abs(-2);
  tC = Low(colour)..Pred(cyan);
var x: tByteHalf; y: tFromEnum; z: tPairs; c: tC; w: array [Low(tPairs)..High(tPairs)] of integer;
begin
  x := High(tByteHalf); y := Low(tFromEnum); z := High(tPairs); c := High(tC);
  writeln(x, ' ', y, ' ', High(tFromEnum), ' ', Low(tPairs), ' ', z, ' ', Ord(c), ' ', Length(w), ' ', SizeOf(w) div SizeOf(integer))
end.
