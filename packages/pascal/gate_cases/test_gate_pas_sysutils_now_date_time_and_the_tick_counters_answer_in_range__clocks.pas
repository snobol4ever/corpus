program clocks;
{$mode objfpc}
uses sysutils;
var t0, t1: TDateTime; a, b: int64; d: double; ok: boolean;
begin
  t0 := Now; a := GetTickCount64; b := GetTickCount;
  d := Date; t1 := Time;
  ok := (t0 > 45000) and (t0 < 80000) and (d <= t0) and (d = trunc(d)) and (t1 >= 0) and (t1 < 1) and (a >= 0) and (b >= 0) and (Now >= t0);
  writeln(ok, ' ', GetTickCount64 >= a, ' ', Now - t0 < 1)
end.
