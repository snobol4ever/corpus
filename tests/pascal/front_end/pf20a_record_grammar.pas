{$mode delphi}
type
  TP = record
    X, Y: Integer;
    procedure Show;
    function Twice(n: Integer): Integer;
  end;
procedure TP.Show;
begin
  writeln('show');
end;
function TP.Twice(n: Integer): Integer;
begin
  Result := n * 2;
end;
begin
  writeln('ok');
end.
