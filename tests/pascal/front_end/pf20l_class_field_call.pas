program n1;
{$mode objfpc}
type
  TCmp = function(const L, R: Integer): Integer;
  TC = class
    FCmp: TCmp;
    function Compare(const L, R: Integer): Integer;
  end;
function TC.Compare(const L, R: Integer): Integer;
begin
  Result := FCmp(L, R)
end;
function Cmp(const L, R: Integer): Integer;
begin
  Result := L - R
end;
var c: TC; f: TCmp;
begin
  f := @Cmp;
  writeln(f(3, 5));
  c := TC.Create;
  c.FCmp := @Cmp;
  writeln(c.FCmp(9, 4));
  writeln(c.Compare(3, 5))
end.
