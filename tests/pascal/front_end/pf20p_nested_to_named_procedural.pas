program nst;
{$mode objfpc}
type TCmp = function(const L, R: Integer): Integer;
procedure Use(const C: TCmp);
begin
  writeln(C(9, 4))
end;
procedure Outer;
var k: Integer;
  function Inner(const L, R: Integer): Integer;
  begin
    Result := L - R + k
  end;
begin
  k := 100;
  Use(@Inner)
end;
begin
  Outer
end.
