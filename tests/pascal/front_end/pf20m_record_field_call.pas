{$mode objfpc}
type
  TCmp = function(const L, R: Integer): Integer;
  TR = record
    FCmp: TCmp;
  end;
function Cmp(const L, R: Integer): Integer;
begin
  Result := L - R
end;
var r: TR;
begin
  r.FCmp := @Cmp;
  writeln(r.FCmp(9, 4))
end.
