{$mode delphi}
type
  TP = record
    X, Y: Integer;
    procedure Move(dx, dy: Integer);
    function Sum: Integer;
  end;
procedure TP.Move(dx, dy: Integer);
begin
  X := X + dx;
  Y := Y + dy;
end;
function TP.Sum: Integer;
begin
  Result := X + Y;
end;
var a, b: TP;
begin
  a.X := 1;
  a.Y := 2;
  b := a;
  b.Move(10, 20);
  writeln(a.Sum, ' ', b.Sum);
end.
