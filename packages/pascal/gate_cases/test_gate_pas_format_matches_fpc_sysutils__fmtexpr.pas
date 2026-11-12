program fmtexpr;
{$mode objfpc}
uses sysutils;
var a: array [1..4] of integer; i: integer; sep, acc: string; x: real;
function Pair(k: integer; v: real): string;
begin
  Pair := Format('%s=%.3f', [IntToStr(k), v])
end;
begin
  for i := 1 to 4 do a[i] := i * i * 7;
  acc := ''; sep := '';
  for i := 1 to 4 do begin acc := acc + Format(sep + '%d', [a[i]]); sep := ',' end;
  writeln(acc);
  writeln(Format('<%s>', [Format('%5.2f|%-4d|', [a[2] / 3, a[1]])]), ' ', Length(Format('%10s', ['ab'])));
  x := 1.0; for i := 1 to 3 do begin x := x / 7; writeln(Pair(i, x), ' ', Format('%.12e', [x]), ' ', Format('%g', [x])) end
end.
