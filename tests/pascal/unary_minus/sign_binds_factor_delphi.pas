program sign_binds_factor_delphi;
{$mode delphi}
var a, b: integer; g: NativeUInt; t: boolean;
begin
  a := 7; b := 3; g := 7; t := true;
  writeln(-a and b);
  writeln(-(a and b));
  writeln(-7 and 3);
  writeln(-(7 and 3));
  writeln(-a shl 1 and b);
  writeln(-(a + 2) and b);
  writeln(100 - (-ORD(t) and g))
end.
