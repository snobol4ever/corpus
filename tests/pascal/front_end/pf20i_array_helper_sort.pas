{$mode delphi}
uses Generics.Collections, Generics.Defaults;
type
  TRec = record
    K, Id: Integer;
  end;
function Cmp(constref L, R: TRec): Integer;
begin
  Result := L.K - R.K;
end;
var a: array of TRec; i: Integer;
begin
  SetLength(a, 12);
  for i := 0 to 11 do
  begin
    a[i].K := i mod 3;
    a[i].Id := i;
  end;
  TArrayHelper<TRec>.Sort(a, TComparer<TRec>.Construct(Cmp));
  for i := 0 to 11 do
    write(a[i].K, ':', a[i].Id, ' ');
  writeln;
end.
