program fpcshl(output);
var a, b: integer;
begin
  a := 10; b := 12;
  writeln('x', a shl 2, a xor b);
  writeln(a, b shr 1)
end.
