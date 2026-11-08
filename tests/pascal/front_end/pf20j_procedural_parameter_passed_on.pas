{$mode delphi}
type
  TCmp = function(L, R: Integer): Integer;
function C1(L, R: Integer): Integer;
begin
  Result := L - R;
end;
procedure Inner(const C: TCmp);
begin
  writeln(C(3, 1));
end;
procedure Outer(const C: TCmp);
begin
  Inner(C);
end;
begin
  Outer(C1);
end.
