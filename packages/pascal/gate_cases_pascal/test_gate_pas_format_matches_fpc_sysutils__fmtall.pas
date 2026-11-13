program fmtall;
{$mode objfpc}
uses sysutils;
var i: integer; r, z, b: real; s: string; c: char; q: int64;
begin
  i := -42; r := 2.5; z := 0.000123456; b := 123456789.125; s := 'hello'; c := 'Z'; q := 12345678901;
  writeln(Format('[%d][%6d][%-6d][%.5d][%8.5d][%u][%x][%8x][%.4x]', [i, i, i, i, i, 7, 255, 4095, 10]));
  writeln(Format('[%s][%8s][%-8s][%.3s][%s][%d]', [s, s, s, s, c, q]));
  writeln(Format('[%f][%.0f][%.3f][%10.4f][%-10.1f][%f][%.2f]', [r, r, z, b, r, z, -r]));
  writeln(Format('[%e][%.3e][%12.4e][%e]', [r, b, z, -r]));
  writeln(Format('[%g][%.3g][%g][%g][%g]', [r, b, z, b, 100.0]));
  writeln(Format('[%n][%.1n][%n]', [b, b, r]));
  writeln(Format('[%*d][%-*d][%.*f][%%]', [5, 3, 4, 7, 2, r]), Format('[%1:s %0:s %s]', ['a', 'b']));
  writeln(Format('%d%s', [1, 'x']), Format('none', []));
  r := 0.05; z := 0.15; b := 0.715; writeln(Format('[%d][%f]', [0, 0.0]), Format('[%.1f][%.1f][%.2f][%.0f][%.0f][%.2f]', [r, z, b, 0.5, 1.5, -0.001]));
end.
