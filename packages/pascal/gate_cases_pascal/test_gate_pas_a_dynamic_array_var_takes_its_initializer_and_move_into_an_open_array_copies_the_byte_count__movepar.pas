{$mode objfpc}
program movepar;
procedure Mrg(var A: array of Integer; L, R: Integer);
var Buf: array of Integer;
  procedure Run;
  var K: Integer;
  begin
    for K := 0 to R - L do Buf[K] := A[L + K] + 1000;
    Move(Buf[0], A[L], Succ(R - L) * SizeOf(Integer));
  end;
begin
  SetLength(Buf, Length(A));
  Run;
end;
var d: array of Integer = (1, 2, 3, 4, 5);
    s: array[-2..2] of Integer = (1, 2, 3, 4, 5);
    k: Integer;
begin
  Mrg(d, 1, 2); for k := 0 to 4 do write(d[k], ' '); writeln;
  Mrg(s, 0, 1); for k := -2 to 2 do write(s[k], ' '); writeln;
  Mrg(d, 0, 4); for k := 0 to 4 do write(d[k], ' '); writeln;
end.
