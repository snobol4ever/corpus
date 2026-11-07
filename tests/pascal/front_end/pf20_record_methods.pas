{$mode delphi}
type
  TItem = record
    Name: string;
    Weight, Value: Double;
    constructor Make(const n: string; w, v: Double);
    function Ratio: Double;
  end;
constructor TItem.Make(const n: string; w, v: Double);
begin
  Name := n; Weight := w; Value := v;
end;
function TItem.Ratio: Double;
begin
  Result := Value / Weight;
end;
var a, b: TItem;
begin
  a := TItem.Make('x', 2, 10);
  b := a;
  b.Weight := 5;
  writeln(a.Name, ' ', a.Ratio:0:2, ' ', b.Ratio:0:2);
end.
