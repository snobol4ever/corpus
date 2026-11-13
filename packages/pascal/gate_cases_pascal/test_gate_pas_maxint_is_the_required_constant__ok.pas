program maxctl(output);
const m = maxint; n = -maxint; half = 1073741823;
type big = 0..maxint; sym = n..m;
var i: integer; b: big; s: sym; r: real;
begin
  i := maxint; b := maxint div 2; s := -maxint; r := maxint;
  writeln(i:1, ' ', m:1, ' ', n:1, ' ', b = half, ' ', s:1, ' ', r:12:1);
  writeln(maxint - 1:1, ' ', maxint div 10:1, ' ', maxint mod 1000:1, ' ', -maxint + 1:1)
end.
