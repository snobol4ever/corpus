program chararrvv(output);
type alpha = packed array[1..8] of char;
var a, b: alpha; n: integer;
begin
  a[1]:='w';a[2]:='r';a[3]:='i';a[4]:='t';a[5]:='e';a[6]:='l';a[7]:='n';a[8]:=' ';
  b[1]:='w';b[2]:='r';b[3]:='i';b[4]:='t';b[5]:='e';b[6]:='l';b[7]:='n';b[8]:=' ';
  n := 0;
  if a = b then n := n + 1;
  if a <> b then n := n + 2;
  b[3] := 'o';
  if a = b then n := n + 10;
  if a <> b then n := n + 20;
  writeln(n)
end.
