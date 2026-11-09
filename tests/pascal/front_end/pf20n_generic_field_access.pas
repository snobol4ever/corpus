{$mode objfpc}
type
  generic TBox<T> = class
  public
    V: T;
    function Get: T;
    procedure SetIt(A: T);
  end;
function TBox.Get: T;
begin
  Result := V
end;
procedure TBox.SetIt(A: T);
begin
  V := A
end;
type
  TIntBox = specialize TBox<Integer>;
var b: TIntBox;
begin
  b := TIntBox.Create;
  b.V := 7;
  writeln(b.Get);
  b.SetIt(9);
  writeln(b.V)
end.
