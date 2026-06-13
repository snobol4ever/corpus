program chararrord(output);
type alpha = packed array[1..8] of char;
var a, b: alpha; n: integer;
begin
  a[1]:='a';a[2]:='b';a[3]:='c';a[4]:=' ';a[5]:=' ';a[6]:=' ';a[7]:=' ';a[8]:=' ';
  b[1]:='a';b[2]:='b';b[3]:='d';b[4]:=' ';b[5]:=' ';b[6]:=' ';b[7]:=' ';b[8]:=' ';
  n := 0;
  if a < b then n := n + 1;
  if a <= b then n := n + 2;
  if b > a then n := n + 4;
  if a >= b then n := n + 8;
  if a < 'zzz     ' then n := n + 100;
  if a > 'aaa     ' then n := n + 200;
  if 'mmm     ' > a then n := n + 400;
  writeln(n)
end.
