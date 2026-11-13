{$mode objfpc}{$H+}
program cur(output);
var C, R, D, Z, N, H, B: Currency;
begin
  C := 1234.56; R := 4; D := 2;
  C := C * R / D;
  writeln(C);
  Z := 0; N := -17.25; H := 0.5; B := 123456789.1234;
  writeln(Z); writeln(N); writeln(H); writeln(B);
  writeln(R + D); writeln(C * 2);
  writeln(R, ' ', D)
end.
