{$mode objfpc}
type
  generic TBox<T> = class
  public
    class function Make: TBox;
  end;
class function TBox.Make: TBox;
begin
  Result := TBox.Create
end;
type TIntBox = specialize TBox<Integer>;
var b: TIntBox;
begin
  b := TIntBox.Make;
  if b <> nil then
    writeln('ok')
end.
