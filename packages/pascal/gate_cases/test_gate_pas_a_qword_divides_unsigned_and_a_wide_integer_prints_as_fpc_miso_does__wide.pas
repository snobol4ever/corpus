{$R-}
program wide;
var a: int64; b: qword; c: longint;
begin
  a := 10000000000000; b := 10000000000000; c := 2147483647;
  writeln(a, '|', b, '|', c, '|', -a, '|');
  a := 9223372036854775807; writeln(a, '|', high(int64), '|');
  b := 18446744073709551615; writeln(b, '|', b = 18446744073709551615, '|')
end.
