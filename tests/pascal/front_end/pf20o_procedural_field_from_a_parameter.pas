{$mode objfpc}
type
  TCmp = function(const L, R: Integer): Integer;
  TC = class
    FCmp: TCmp;
    class function Make(const C: TCmp): TC;
  end;
class function TC.Make(const C: TCmp): TC;
begin
  Result := TC.Create;
  Result.FCmp := C
end;
function Cmp(const L, R: Integer): Integer;
begin
  Result := L - R
end;
var c: TC;
begin
  c := TC.Make(@Cmp);
  writeln(c.FCmp(9, 4))
end.
