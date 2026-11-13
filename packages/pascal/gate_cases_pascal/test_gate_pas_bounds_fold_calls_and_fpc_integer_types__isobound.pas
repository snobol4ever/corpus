program isobound(output);
type
  tRegion1 = 0..63 - 2 * SizeOf(byte);
  tSmall = Ord('a')..Ord('e');
  tWide = 1..SizeOf(longint) * 2;
var r: tRegion1; a: array [tSmall] of integer; i: integer; w: array [tWide] of char;
begin
  r := high(tRegion1); writeln(r, ' ', low(tSmall), ' ', high(tSmall), ' ', high(tWide));
  for i := low(a) to high(a) do a[i] := i; writeln(a[Ord('c')]);
  writeln(sizeof(w))
end.
