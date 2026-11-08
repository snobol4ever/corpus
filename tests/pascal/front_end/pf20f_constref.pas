{$mode delphi}
function Cmp(constref L, R: Integer): Integer;
begin
  Result := L - R;
end;
begin
  writeln(Cmp(3, 1));
end.
