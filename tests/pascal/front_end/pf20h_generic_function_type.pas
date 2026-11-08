{$mode delphi}
type
  TCmp<T> = function(constref L, R: T): Integer;
function C1(constref L, R: Integer): Integer;
begin
  Result := L - R;
end;
var f: TCmp<Integer>;
begin
  f := C1;
  writeln(f(3, 1));
end.
